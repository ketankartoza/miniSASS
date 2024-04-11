import React, { useEffect, useState } from 'react';
import { FormikValues } from 'formik';
import { FormControlLabel, Radio, RadioGroup } from "@mui/material";
import DegreeInputs from "./degreeInputs";
import DmsInputs, { ValueInterface } from "./dmsInput";
import {
  convertDmsToLatitude,
  convertDmsToLongitude,
  convertToDMSLatitude,
  convertToDMSLongitude
} from "../../utils/coordinates";

import "./style.css"

export interface Interface {
  values: FormikValues,
  setFieldValue: (name: string, value: any) => void,
  defaultType: string,
  selectedCoordinates: {longitude: number, latitude: number},
  handleMapClick: (longitude: number, latitude: number) => void;
  selectOnMap: boolean;
  disabled?: boolean;
}

const detailed = 10000

/** Coordinates input form. **/
export default function CoordinatesInputForm(
  { values, setFieldValue, defaultType, handleMapClick, selectedCoordinates, selectOnMap, disabled }: Interface
) {
  const [type, setType] = useState<string>(defaultType)

  // use updater functions on select on map
  const [latitude, setLat] = useState(0); // Initial value
  const [longitude, setLong] = useState(0);

  /** set latitude **/
  const setLatitude = (val) => {
    console.log('val in setLat: ',val);
    if (val) {
      setFieldValue('latitude', val)
    }
  }

  /** set longitude **/
  const setLongitude = (val) => {
    if (val) {
      setFieldValue('longitude', val)
    }
  }

  useEffect(() => {
    console.log('debug coordinates: ', selectedCoordinates)
    console.log('select on map value: ',selectOnMap)
    setLatitude(selectedCoordinates.latitude)
    setLongitude(selectedCoordinates.longitude)
    setLat(selectedCoordinates.latitude)
    setLong(selectedCoordinates.longitude)

  }, [selectOnMap, selectedCoordinates]);

  return <div className='CoordinatesInputForm'>
    {!selectOnMap ? (
      <RadioGroup
        value={type}
        onChange={(evt) => setType(evt.target.value)}
        row
      >
        <FormControlLabel value="DMS" control={<Radio/>} label="DMS"/>
        <FormControlLabel value="Degree" control={<Radio/>} label="Degree"/>
      </RadioGroup>
    ):(
      <RadioGroup
        value={`Degree`}
        onChange={(evt) => setType(evt.target.value)}
        row
      >
        <FormControlLabel value="Degree" control={<Radio/>} label="Degree"/>
      </RadioGroup>
    )}
    {selectOnMap ?
    (

      <DegreeInputs
        latitude={selectedCoordinates.latitude.toFixed(6)}
        longitude={selectedCoordinates.longitude.toFixed(6)}
        disabled={disabled}
        setLatitude={setLat}
        setLongitude={setLong}
    />) :
      type === 'Degree' ?
        <DegreeInputs
          latitude={values.latitude}
          longitude={values.longitude}
          disabled={disabled}
          setLatitude={(value) => {
            setFieldValue('latitude', value);
            handleMapClick(Number(value), Number(values.longitude))
          }}
          setLongitude={(value) => {
            setFieldValue('longitude', value);
            handleMapClick(Number(values.latitude), Number(value))
          }}
        />
        :
        <DmsInputs
          latitude={convertToDMSLatitude(values.latitude)}
          disabled={disabled}
          setLatitude={(values_internal: ValueInterface) => {
            setLatitude(
              convertDmsToLatitude(
                values_internal.degrees, values_internal.minutes, values_internal.seconds, values_internal.cardinal
              )
            )
            handleMapClick(
              Number(values.latitude),
              Number(values.longitude)
            )
          }}
          longitude={convertToDMSLongitude(values.longitude)}
          setLongitude={(values_internal: ValueInterface) => {
            setLongitude(
              convertDmsToLongitude(
                values_internal.degrees, values_internal.minutes, values_internal.seconds, values_internal.cardinal
              )
            )
            handleMapClick(
              Number(values.latitude),
              Number(values.longitude)
            )
          }}
        />
    }
  </div>
}
