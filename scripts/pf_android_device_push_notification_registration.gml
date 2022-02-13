/// pf_android_device_push_notification_registration([Script]onComplete, [Script]onError, [String]deviceToken, [Bool]sendPushNotificationConfirmation, [String]confirmationMessage );

// Custom Callbacks
var onComplete = argument0;
var onError = argument1;

// Arquments
var deviceToken = argument2;
var sendPushNotificationConfirmation = argument3;
var confirmationMessage = argument4;

// Internal Callbacks
var iOnComplete = i_pf_default_complete;
var iOnError = i_pf_default_error;

// Method
var method = "POST";

// Path
var path = "/AndroidDevicePushNotificationRegistration";

// Headers
var headers = i_pf_header_create(true,true);

// Body
var body = map_create("body");
i_pf_body_set("DeviceToken",deviceToken, pf_data_type_string, true );
i_pf_body_set("SendPushNotificationConfirmation",sendPushNotificationConfirmation, pf_data_type_bool, false );
i_pf_body_set("ConfirmationMessage", confirmationMessage, pf_data_type_string, false );


// Request
i_pf_request(path, method, headers, body, onComplete, onError, iOnComplete, iOnError);

