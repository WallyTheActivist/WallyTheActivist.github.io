# Script to create enhanced CSS block that can be injected
$enhancedStyles = @"
        html {
            scroll-behavior: smooth;
        }

        body {
            overflow-x: hidden;
            line-height: 1.7;
        }

        h1, h2, h3, h4, h5, h6 {
            letter-spacing: 0.5px;
        }

        /* Back to Top Button */
        .back-to-top {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: linear-gradient(135deg, #FF4500 0%, #FF6A33 100%);
            color: #FFFFFF;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            cursor: pointer;
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
            box-shadow: 0 6px 20px rgba(255,69,0,0.4);
            z-index: 999;
        }

        .back-to-top.visible {
            opacity: 1;
            visibility: visible;
        }

        .back-to-top:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(255,69,0,0.6);
        }

        /* Fade-in animations */
        .fade-in {
            opacity: 0;
            transform: translateY(30px);
            transition: opacity 0.6s ease, transform 0.6s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }
"@

Write-Output "Enhanced CSS template created"
