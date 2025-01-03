<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PMS | Payment</title>
    <link rel="icon" href="/img/logo.png" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        img {
            width: 300px;
            height: 400px;
            /* border: 3px solid #111; */
            border: solid 10px #3d5cb8;
            border-radius:0%;
            /* background-image: linear-gradient(white, white),  */
            /* linear-gradient(to right, green, gold); */
            background-origin: border-box;
            background-clip: content-box, border-box;
        }

        p {
            color: #2F4858;
            font-weight: bolder;
            font-size: xx-large;
            margin-top: 20px;
        }

        h6 {
            font-weight: bolder;
            color: #2F4858;
        }
    </style>
</head>

<body >
   <s:url var="url_img1" value="/static/img/mode1.png" />
   <s:url var="url_img2" value="/static/img/mode2.png" />
   <s:url var="url_img3" value="/static/img/mode3.png" />
   
     <s:url var="url_flightList" value="/flightList" />
 
    <div class="container">
       

        <p style="margin-top: 50px;font-size:large ">Select payment option:</P>
        <div class="row 2">
            <table>
                <th>
                    <div class="col">
                        <div>
                            <a href="${url_flightList }"> <img src="${ url_img1}" alt="helo"></a>
                            <h6 style="text-align: center; margin-top:10px ">Cash</h6>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="col">
                        <div>
                            <a href="${url_flightList}?act=saved"> <img src="${ url_img2}" alt="helo"></a>
                            <h6 style="text-align: center; margin-top:10px ">Digital Wallet</h6>
                        </div>
                    </div>
                </th>
                <th>
                    <div class="col">
                        <div>
                            <a href="${url_flightList }"> <img src="${ url_img3}" alt="helo"></a>
                            <h6 style="text-align: center; margin-top:10px ">Debit/Credit Card</h6>
                        </div>
                    </div>
                </th>

            </table>
            

        </div>
    </div>


</body>

</html>