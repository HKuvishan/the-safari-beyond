<!--- /footer-top ---->
<!---copy-right ---->
<div class="copy-right">
    <div class="container">

        <!-- Embedded CSS Styling for The Safari Beyond -->
        <style>
            /* General Footer Styling */
            .copy-right {
                background-color: #1d1f20;
                color: #dcdcdc;
                padding: 40px 0;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            .copy-right .container {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            /* Contact Information Section */
            .footer-contact {
                flex: 1;
                margin-right: 20px;
                padding: 20px;
                border-left: 4px solid #e67e22;
            }

            .footer-contact h4 {
                font-size: 22px;
                margin-bottom: 20px;
                color: #e67e22;
                font-weight: 700;
                text-transform: uppercase;
            }

            .footer-contact p {
                margin-bottom: 10px;
                font-size: 16px;
                line-height: 1.8;
                color: #dcdcdc;
            }

            /* Quick Links Section */
            .footer-links {
                flex: 1;
                margin-right: 20px;
                padding: 20px;
            }

            .footer-links h4 {
                font-size: 22px;
                margin-bottom: 20px;
                color: #e67e22;
                font-weight: 700;
                text-transform: uppercase;
            }

            .footer-links ul {
                list-style: none;
                padding: 0;
            }

            .footer-links ul li {
                margin-bottom: 10px;
            }

            .footer-links ul li a {
                color: #dcdcdc;
                font-size: 16px;
                text-decoration: none;
                transition: color 0.3s ease;
            }

            .footer-links ul li a:hover {
                color: #e67e22;
            }

            /* Newsletter Subscription Section */
            .footer-newsletter {
                flex: 1;
                padding: 20px;
            }

            .footer-newsletter h4 {
                font-size: 22px;
                margin-bottom: 20px;
                color: #e67e22;
                font-weight: 700;
                text-transform: uppercase;
            }

            .footer-newsletter form {
                display: flex;
                flex-direction: column;
            }

            .footer-newsletter form input[type="email"] {
                padding: 12px;
                margin-bottom: 10px;
                border: none;
                border-radius: 4px;
                background-color: #2c2f31;
                color: #dcdcdc;
                font-size: 16px;
                width: 100%;
                box-sizing: border-box;
            }

            .footer-newsletter form button {
                padding: 12px;
                background-color: #e67e22;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                font-weight: 600;
                text-transform: uppercase;
                transition: background-color 0.3s ease;
            }

            .footer-newsletter form button:hover {
                background-color: #cf6d19;
            }

            /* Footer Bottom Text */
            .copy-right p {
                text-align: center;
                margin-top: 20px;
                font-size: 14px;
                color: #a5a5a5;
                letter-spacing: 0.5px;
            }

            /* Horizontal Line Styling */
            .footer-separator {
                width: 75%;
                height: 2px;
                background-color: #a5a5a5;
                margin: 40px 0 20px;
                opacity: 0.5;
            }
			

            /* Responsive Design */
            @media (max-width: 768px) {
                .copy-right .container {
                    flex-direction: column;
                    align-items: center;
                }

                .footer-contact, .footer-links, .footer-newsletter {
                    margin-right: 0;
                    margin-bottom: 20px;
                    max-width: 100%;
                }

                .footer-separator {
                    margin: 30px 0 10px;
                }
            }
        </style>

        <!-- Social Media Links (Existing Code) -->
        <div class="footer-social-icons wow fadeInDown animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
            <ul>
                <li><a class="facebook" href="https://www.facebook.com" target="_blank"><span>Facebook</span></a></li>
                <li><a class="twitter" href="https://www.twitter.com" target="_blank"><span>Twitter</span></a></li>
                <li><a class="flickr" href="https://www.flickr.com" target="_blank"><span>Flickr</span></a></li>
                <li><a class="googleplus" href="https://plus.google.com" target="_blank"><span>Google+</span></a></li>
                <li><a class="dribbble" href="https://www.dribbble.com" target="_blank"><span>Dribbble</span></a></li>
            </ul>
        </div>

        <!-- Contact Information Section -->
        <div class="footer-contact wow fadeInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
            <h4>Contact Us</h4>
            <p>Email: thesafaribeyond7@gmail.com</p>
            <p>Phone:  077 497 8330</p>
            <p>Address:  Safari Beyond, Minton Ln, Colombo 07</p>
        </div>

        <!-- Quick Links Section -->
        <div class="footer-links wow fadeInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="package-list.php">Our packages</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Privacy Policy</a></li>
            </ul>
        </div>

        

        <!-- Horizontal Line Separator -->
        <hr class="footer-separator">

        <!-- Footer Bottom Text -->
        <p class="wow zoomIn animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> The Safari Beyond. All Rights Reserved. </p>
    </div>
</div>