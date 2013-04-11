<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:UserLayer>
        <sld:LayerFeatureConstraints>
            <sld:FeatureTypeConstraint/>
        </sld:LayerFeatureConstraints>
        <sld:UserStyle>
            <sld:Name>sites</sld:Name>
            <sld:Title/>
            <sld:FeatureTypeStyle>
                <sld:Name>group 0</sld:Name>
                <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
                <sld:SemanticTypeIdentifier>generic:geometry</sld:SemanticTypeIdentifier>
                <sld:SemanticTypeIdentifier>simple</sld:SemanticTypeIdentifier>
                <sld:Rule>
                    <sld:Name>Unmodified (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>sandy</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.9</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
           
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_n.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                  <sld:Rule>
                    <sld:Name>Unmodified (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
               
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>sandy</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.9</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            

            <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>

          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_n_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>


                   <sld:Rule>
                    <sld:Name>Unmodified (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
               <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>rocky</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>7.9</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_n.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                   <sld:Rule>
                    <sld:Name>Unmodified (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
                <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>rocky</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>7.9</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
                 <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_n_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>                  

                <sld:Rule>
                    <sld:Name>Largely natural/few modifications (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                  <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>rocky</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>6.8</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>7.9</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_g.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                  <sld:Rule>
                    <sld:Name>Largely natural/few modifications (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                   <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>rocky</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>6.8</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>7.9</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_g_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                   <sld:Rule>
                    <sld:Name>Largely natural/few modifications (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>sandy</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>5.8</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.9</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
                <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_g.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                 
                    <sld:Rule>
                    <sld:Name>Largely natural/few modifications (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                   <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>sandy</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>5.8</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.9</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
               <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_g_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>




                

                
                <sld:Rule>
                    <sld:Name>Moderately modified (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                  <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>rocky</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>6.1</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.8</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_f.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                    <sld:Rule>
                    <sld:Name>Moderately modified (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                    <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>rocky</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>6.1</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.8</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
                  <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_f_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>


                <sld:Rule>
                    <sld:Name>Moderately modified (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                   <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>sandy</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>4.9</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>5.8</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_f.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>


                <sld:Rule>
                    <sld:Name>Moderately modified (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                  <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>sandy</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>4.9</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>5.8</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_f_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                <sld:Rule>
                    <sld:Name>Largely modified(rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                  <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>rocky</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>5.1</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.1</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
                  <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_p.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>


                  <sld:Rule>
                    <sld:Name>Largely modified(rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                    <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>rocky</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>5.1</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>6.1</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_p_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                
                <sld:Rule>
                    <sld:Name>Largely modified (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                   <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>sandy</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>4.3</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>4.9</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_p.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                 <sld:Rule>
                    <sld:Name>Largely modified (sandy)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
              <ogc:And>
                   <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:PropertyName>river_cat</ogc:PropertyName>
                  <ogc:Literal>sandy</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>score</ogc:PropertyName>
                  <ogc:Literal>4.3</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
              </ogc:And>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>4.9</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
             
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>            

          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_p_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

                 <sld:Rule>
                    <sld:Name>Seriously/critically modified (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
               <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>rocky</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>5.1</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_sm.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                 
                   <sld:Rule>
                    <sld:Name>Seriously/critically modified (rocky)</sld:Name>
                    <ogc:Filter>
            <ogc:And>
               <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>rocky</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>5.1</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_sm_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>  
                 
                <sld:Rule>
                    <sld:Name>Seriously/critically modified (sandy)</sld:Name>
                     <ogc:Filter>
            <ogc:And>
                <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>sandy</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>4.3</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
             <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>clean</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_sm.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>


                 <sld:Rule>
                    <sld:Name>Seriously/critically modified (sandy)</sld:Name>
                     <ogc:Filter>
            <ogc:And>
                  <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>river_cat</ogc:PropertyName>
                <ogc:Literal>sandy</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>score</ogc:PropertyName>
                <ogc:Literal>4.3</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>flag</ogc:PropertyName>
                <ogc:Literal>dirty</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:ExternalGraphic>
                                <sld:OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="icons/crab_sm_dirty.svg"/>
                                <sld:Format>image/svg+xml</sld:Format>
                            </sld:ExternalGraphic>
                            <sld:Size>10.0</sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>


            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:UserLayer>
</sld:StyledLayerDescriptor>
