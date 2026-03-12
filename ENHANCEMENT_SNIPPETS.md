# ROX WEBSITE - QUICK ENHANCEMENT GUIDE

Copy these snippets into story.html, team.html, why-choose.html, and vision.html to apply the same visual enhancements from index.html.

---

## 1. UPDATE THE `<HEAD>` SECTION

Add the enhanced font weight (800) to your Google Fonts import:

```html
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght=400;600;700;800&family=Source+Sans+Pro:wght@400;600&display=swap" rel="stylesheet">
```

---

## 2. ADD TO CSS (IN YOUR `<STYLE>` TAG)

### Smooth Scroll and Enhanced Body

```css
html {
    scroll-behavior: smooth;
}

body {
    overflow-x: hidden;
    line-height: 1.7;
}
```

### Enhanced Headings with Letter-Spacing

```css
h1, h2, h3, h4, h5, h6 {
    letter-spacing: 0.5px;
    font-weight: 700;
}

h2 {
    font-size: 36px;
    letter-spacing: 1px;
}
```

### Logo with Africa Icon

```css
.logo::before {
    content: '🌍';
    font-size: 28px;
    margin-right: 10px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
}
```

### Animated Gradient Underline on Nav Links

```css
.nav-links a {
    position: relative;
    padding: 5px 0;
}

.nav-links a::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 2px;
    background: linear-gradient(to right, #FF4500, #FFD700);
    transition: width 0.3s ease;
}

.nav-links a:hover::after,
.nav-links a.active::after {
    width: 100%;
}
```

### Animated Hamburger Menu

```css
.hamburger.active span:nth-child(1) {
    transform: rotate(45deg) translate(8px, 8px);
}

.hamburger.active span:nth-child(2) {
    opacity: 0;
}

.hamburger.active span:nth-child(3) {
    transform: rotate(-45deg) translate(8px, -8px);
}
```

### Back to Top Button

```css
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
```

### Fade-in Animations for Scroll Reveal

```css
.fade-in {
    opacity: 0;
    transform: translateY(30px);
    transition: opacity 0.6s ease, transform 0.6s ease;
}

.fade-in.visible {
    opacity: 1;
    transform: translateY(0);
}
```

### Enhanced Sections with Gradients

```css
.story-section, .intro-section, .team-section {
    background: linear-gradient(135deg, #F9F9F9 0%, #FFFFFF 100%);
    border-radius: 20px;
    padding: 70px 50px;
    margin: 60px 0;
    box-shadow: 0 10px 40px rgba(0,0,0,0.08);
    border: 1px solid rgba(255,215,0,0.2);
}
```

### Drop Cap on First Paragraph

```css
.story-section p:first-of-type::first-letter,
.intro-section p:first-of-type::first-letter {
    font-size: 72px;
    font-weight: 800;
    float: left;
    line-height: 60px;
    padding-right: 12px;
    color: #FF4500;
    font-family: 'Montserrat', sans-serif;
}
```

### Enhanced Cards with Hover Effects

```css
.feature-card, .mission-card, .team-card {
    background: linear-gradient(135deg, #FFFFFF 0%, #F9F9F9 100%);
    padding: 45px 35px;
    border-radius: 20px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.08);
    transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    border: 2px solid transparent;
}

.feature-card:hover, .mission-card:hover, .team-card:hover {
    transform: translateY(-10px) scale(1.02);
    box-shadow: 0 20px 50px rgba(0,0,0,0.15);
    border-color: rgba(255,215,0,0.5);
}
```

### Enhanced CTA Buttons

```css
.cta-button {
    padding: 18px 50px;
    font-size: 19px;
    font-weight: 700;
    border-radius: 50px;
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
    letter-spacing: 0.5px;
}

.cta-primary {
    background: linear-gradient(135deg, #FF4500 0%, #FF6A33 100%);
    color: #FFFFFF;
    box-shadow: 0 8px 25px rgba(255,69,0,0.3);
}

.cta-primary:hover {
    transform: scale(1.05) translateY(-3px);
    box-shadow: 0 12px 35px rgba(255,69,0,0.5);
}
```

### Footer Wave Divider

```css
footer {
    position: relative;
}

footer::before {
    content: '';
    position: absolute;
    top: -50px;
    left: 0;
    right: 0;
    height: 50px;
    background: linear-gradient(to bottom right, transparent 49%, #003366 50%);
}
```

### Enhanced Footer Links

```css
.footer-links a {
    display: inline-block;
    position: relative;
}

.footer-links a::before {
    content: '▸ ';
    color: #FFD700;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.footer-links a:hover::before {
    opacity: 1;
}

.footer-links a:hover {
    color: #FF4500;
    transform: translateX(5px);
}
```

### Social Icons Animation

```css
.social-icons a {
    display: inline-block;
}

.social-icons a:hover {
    color: #FFD700;
    transform: translateY(-5px) scale(1.2);
}
```

### Header Shadow on Scroll

```css
header {
    transition: box-shadow 0.3s ease;
}

header.scrolled {
    box-shadow: 0 6px 30px rgba(0,0,0,0.15);
}
```

---

## 3. ADD TO HTML (BEFORE `</FOOTER>`)

Add the back to top button:

```html
<div class="back-to-top" aria-label="Back to top">↑</div>
```

---

## 4. ADD `fade-in` CLASS TO SECTIONS

Add the `fade-in` class to your main sections for scroll animations:

```html
<section class="story-section fade-in">
    <!-- Your content -->
</section>

<section class="team-section fade-in">
    <!-- Your content -->
</section>
```

---

## 5. UPDATE HEADER TAG

Add an ID to your header for the scroll effect:

```html
<header id="header">
    <!-- Your nav content -->
</header>
```

---

## 6. ADD JAVASCRIPT (BEFORE `</BODY>`)

Replace your existing JavaScript with this enhanced version:

```javascript
<script>
    // Mobile Menu Toggle with Animation
    const hamburger = document.querySelector('.hamburger');
    const navLinks = document.querySelector('.nav-links');

    hamburger.addEventListener('click', () => {
        navLinks.classList.toggle('active');
        hamburger.classList.toggle('active');
        const isExpanded = hamburger.getAttribute('aria-expanded') === 'true';
        hamburger.setAttribute('aria-expanded', !isExpanded);
    });

    // Close menu when clicking a link
    document.querySelectorAll('.nav-links a').forEach(link => {
        link.addEventListener('click', () => {
            navLinks.classList.remove('active');
            hamburger.classList.remove('active');
            hamburger.setAttribute('aria-expanded', 'false');
        });
    });

    // Header shadow on scroll
    window.addEventListener('scroll', () => {
        const header = document.getElementById('header');
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    });

    // Fade-in on scroll using IntersectionObserver
    const fadeElements = document.querySelectorAll('.fade-in');
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, {
        threshold: 0.1
    });

    fadeElements.forEach(element => {
        observer.observe(element);
    });

    // Back to top button
    const backToTop = document.querySelector('.back-to-top');
    
    window.addEventListener('scroll', () => {
        if (window.pageYOffset > 300) {
            backToTop.classList.add('visible');
        } else {
            backToTop.classList.remove('visible');
        }
    });

    backToTop.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
</script>
```

---

## ✅ QUICK CHECKLIST FOR EACH PAGE

Use this checklist when enhancing each page:

- [ ] Update Google Fonts link (add weight 800)
- [ ] Add `logo::before` CSS (🌍 icon)
- [ ] Add `nav-links a::after` CSS (gradient underline)
- [ ] Add `hamburger.active` CSS (animated X)
- [ ] Add `.back-to-top` CSS + HTML
- [ ] Add `.fade-in` CSS
- [ ] Add `fade-in` class to `<section>` elements
- [ ] Update section backgrounds to gradients
- [ ] Add drop cap CSS to first paragraphs
- [ ] Enhance card hover effects
- [ ] Update CTA button styles
- [ ] Add `footer::before` wave divider
- [ ] Add JavaScript for animations
- [ ] Add `id="header"` to `<header>` tag
- [ ] Test all animations and interactions

---

## 📝 NOTES

- **index.html is your reference** - copy CSS/JS patterns from there
- Test on mobile (< 600px), tablet (600-900px), and desktop (> 900px)
- All animations are GPU-accelerated (using transform/opacity)
- IntersectionObserver provides better performance than scroll listeners
- Gradients follow the color scheme: #FFD700 (gold) → #FF4500 (orange)

---

**Ready to enhance your site? Start with story.html and work through each page!** 🚀
