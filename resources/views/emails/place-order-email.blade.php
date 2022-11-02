<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>PixieDust</title>
                <style type="text/css">
                    @media only screen and (max-width: 600px) {
                        table[class="contenttable"] {
                            width: 320px !important;
                            border-width: 3px!important;
                        }
                        table[class="tablefull"] {
                            width: 100% !important;
                        }
                        table[class="tablefull"] + table[class="tablefull"] td {
                            padding-top: 0px !important;
                        }
                        table td[class="tablepadding"] {
                            padding: 15px !important;
                        }
                    }
                </style>
                </head>
                <body style="margin:0; border: none; background:#f5f5f5">
                    <table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
                        <tr>
                            <td align="center" valign="top" bgcolor="#EFEFEF"><table class="contenttable" border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#ffffff" style="border-width: 8px; border-style: solid; border-collapse: separate; border-color:#ececec; margin-top:40px; font-family:Arial, Helvetica, sans-serif">
                                    <tr>
                                        <td bgcolor="#037ad1"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td width="100%" height="20" bgcolor="#006eb7">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="top" bgcolor="#353535"><a href="#" style="padding-top:10px; padding-bottom:10px; display:inline-block;">
                                                                <img src="{{ asset('public/images/logo.png') }}" title="Pixie Dust" alt="Pixie Dust" width="400"></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="100%" height="20" bgcolor="#006eb7">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                </tbody>
                                            </table></td>
                                    </tr>
                                    <tr>
                                        <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tbody>
                                                    <tr>
                                                </tbody>
                                            </table></td>
                                    </tr>
                                    <tr>
                                        <td class="tablepadding" style="border-top: 1px solid #eaeaea; font-size:14px; border-bottom: 1px solid #eaeaea; padding: 13px 20px; background: #f3f3f3;">
                                            <table width="100%" border="0" cellspacing="20" cellpadding="0">
                                                <tr>
                                                    <td>Hello {{ $data['ship_full_name'] }},</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p>Your order no <strong>{{ $data['order_id'] }}</strong> has been placed successfully.Your order will be shipped soon.Your invoice attrached below.</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Thank you for your purchasing</td>
                                                </tr>
                                            </table></td>
                                    </tr>
                                    <tr>
                                        <td><table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
                                                <tbody>
                                                    <tr>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table></td>
                                    </tr>
                                    <tr>
                                        <td><table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-size:13px;color:#555555; font-family:Arial, Helvetica, sans-serif;">
                                                <tbody>
                                                    <tr>
                                                        <td class="tablepadding" align="center" style="font-size:14px; line-height:22px; padding:20px; border-top:1px solid #ececec; background: #cccccc8f; border-top:solid 5px #353535;"> THANK YOU,<br />
                                                            <strong>PIXIE DUST
                                                            </strong></td>
                                                    </tr>
                                                    <tr> </tr>
                                                </tbody>
                                            </table></td>
                                    </tr>

                                </table></td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </body>
                </html>