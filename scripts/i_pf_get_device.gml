var i_str;

if os_type == os_android {
    switch(os_device) {
        case device_tablet:     i_str = "Android tablet";           break;
        case device_ios_iphone: i_str = "Android phone";            break;
        case device_emulator:   i_str = "Android emulator";         break;
        case device_ios_unknown:i_str = "Unknown android device";   break;
        default:                i_str = "Unlisted Android device";  break;
    }
}
else if os_type == os_windows i_str = "Windows PC";
else if os_type == os_ios {

    switch(os_device) {
        case device_ios_ipad:           i_str = "iPad";                               break;
        case device_ios_ipad_retina:    i_str = "iPad with Retina";                   break;
        case device_ios_iphone6:        i_str = "iPhone 6";                           break;
        case device_ios_iphone6plus:    i_str = "iPhone 6+";                          break;
        case device_ios_iphone5:        i_str = "iPhone 5";                           break;
        case device_ios_iphone_retina:  i_str = "iPhone/iPod Touch with Retina";      break;
        case device_ios_unknown:        i_str = "Unknown iOS device";                 break;
        case device_ios_iphone:         i_str = "Older iPhone/iPod touch";            break;
        default:                        i_str = "Unlisted iOS device";                 break;
    }
}

return i_str;
