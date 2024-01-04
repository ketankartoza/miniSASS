import * as React from 'react';
import Button from '@mui/material/Button';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import {Img} from "../Img";
import {globalVariables} from "../../utils";
import {logout, useAuth} from "../../AuthContext";
import Link from '@mui/material/Link';
import {useNavigate} from "react-router-dom";
import ConfirmationDialogRawProps from "../ConfirmationDialog";
import ConfirmationDialogRaw from "../ConfirmationDialog";


export default function UserMenu(props: {setUpdateProfileOpen: void}) {
  const [anchorEl, setAnchorEl] = React.useState<null | HTMLElement>(null);
  const [logoutOpen, setLogoutOpen] = React.useState(false);
  const { dispatch, state } = useAuth();
  const navigate = useNavigate();
  const open = Boolean(anchorEl);
  const handleClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClickLogout = () => {
    setLogoutOpen(true);
    handleClose();
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  const handleLogout = () => {
    handleClickLogout();
  };

  const handleLogoutConfirm = () => {
    logout(dispatch)
  };

  const handleLogoutCancel = () => {
    setLogoutOpen(false)
  };

  return (
    <>
    <ConfirmationDialogRaw
        id="logout-dialog"
        keepMounted
        open={logoutOpen}
        onClose={handleLogoutCancel}
        onConfirm={handleLogoutConfirm}
      />
    <div className="h-[35px] w-[35px]">
      <Img
        src={`${globalVariables.staticPath}iconamoon_profile-circle-fill.svg`}
        alt="iconamoon_profile-circle-fill"
        onClick={handleClick}
        style={{height: '35px'}}
      />
      <Menu
        anchorEl={anchorEl}
        open={open}
        onClose={handleClose}
      >
        <MenuItem onClick={() => props.setUpdateProfileOpen(true)}>Profile</MenuItem>
        <MenuItem onClick={() => {
          navigate(`/recent-activity`);
        }}>
          Recent Activity
        </MenuItem>
        {
          state.user.is_admin &&
          <MenuItem
            onClick={handleClose}
          >
            <Link
              href={`${globalVariables.baseUrl}/admin`}
              style={{ textDecoration: 'none', color: 'inherit' }}
            >Admin</Link>
          </MenuItem>
        }
        <MenuItem
          onClick={handleLogout}
        >
          Logout
        </MenuItem>
      </Menu>
    </div>
    </>
  );
}