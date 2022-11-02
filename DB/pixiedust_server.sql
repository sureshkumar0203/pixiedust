-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 06:49 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixiedust_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner`, `created_at`, `updated_at`) VALUES
(5, '169953781141607banner-1.jpg', '2018-12-19 01:11:06', '2019-02-06 18:24:38'),
(6, '1882155822banner-2.jpg', '2018-12-19 01:11:29', '2019-01-24 13:50:19'),
(8, '55540Banner jewelry for soul.jpg', '2019-02-03 01:59:12', '2019-02-03 01:59:12'),
(9, '33496Coexist banner.jpg', '2019-02-04 03:56:45', '2019-02-04 03:56:45'),
(10, '83631visit us banner.jpg', '2019-02-08 16:12:52', '2019-02-08 16:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Jewelry', 'jewelry', '90817subcat_graphics-0.jpg', '2018-12-20 23:17:33', '2018-12-20 23:17:33'),
(2, 'Statues', 'statues', '82693A4C184CE-421C-48BD-B0A8-316BE740E91F-1024x768.jpeg', '2018-12-31 05:03:04', '2018-12-31 05:03:04'),
(3, 'Incense and Smudge', 'incense-and-smudge', '86093largesmudgestick.jpg', '2019-02-02 06:16:22', '2019-02-02 06:17:20'),
(4, 'Gifts', 'gifts', '98345Black Box with Heart.jpg', '2019-02-03 02:36:24', '2019-02-03 02:45:07'),
(5, 'Musical', 'musical', '1274331529.jpg', '2019-02-03 02:50:59', '2019-02-03 02:50:59'),
(6, 'Crystals and Stones', 'crystals-and-stones', '2939562264.jpg', '2019-02-04 03:37:51', '2019-02-04 03:37:51'),
(7, 'Ritual Items', 'ritual-items', '70908directionals.png', '2019-02-07 03:12:35', '2019-02-07 03:12:35'),
(8, 'Divination', 'divination', '92564black onyx runes.jpg', '2019-02-08 05:35:22', '2019-02-08 05:35:22'),
(9, 'Feng Shui', 'feng-shui', '88524bagua.jpg', '2019-02-11 22:45:33', '2019-02-11 22:45:33'),
(10, 'Dreamcatchers and Misc.', 'dreamcatchers-and-misc', '63772dreamcatcherkheo30004.jpg', '2019-03-13 02:25:08', '2019-03-13 02:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `title`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<div class=\"entry-content services_li\" style=\"box-sizing: border-box; font-size: 1.1em;  text-align: center; caret-color: rgb(96, 100, 108);\">\r\n<h1>&nbsp;</h1>\r\n\r\n<h3><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Welcome to Pixie Dust Metaphysical&nbsp;Boutique!</strong></span></h3>\r\n\r\n<h4><strong>Sarasota&rsquo;s unique gifts, psychic readings, crystals, spiritual jewelry, New Age items, massage and energetic treatments, and a lot of whimsy in west Florida</strong></h4>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">Our metaphysical store carries a variety of spiritual jewelry, crystals, New Age books,&nbsp;statues, Buddhas, fairies, mermaids, runes, pagan and Wiccan supplies, Sarasota&rsquo;s widest variety of tarot and oracle card decks and much more! &nbsp;We also offer therapeutic massage, sound bath treatments, Reiki treatments, chakra clearing and other energetic healing services. &nbsp;Visit us in person at our Main Street location downtown Sarasota, Florida, or check out our&nbsp;online store&nbsp;to shop for the best jewelry, incense, magical statues, and everything else New Age.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">We have psychic readers in our Sarasota store every week to answer your questions. &nbsp;Call us to schedule your intuitive readings! &nbsp;Walk ins are always welcome</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11px\"><span style=\"font-family:arial,helvetica,sans-serif\">We also organize a variety of New Age events, psychic readings and metaphysical workshops with the best healers and psychic readers from Sarasota and surrounding communities in Florida. &nbsp;Browse our&nbsp;news and events&nbsp;page for current updates or visit our store in person:</span></span></p>\r\n\r\n<h4><strong>Pixie Dust Metaphysical Boutique</strong></h4>\r\n\r\n<h4><strong>1476 Main Street&nbsp;</strong></h4>\r\n\r\n<h4><strong>Sarasota, FL</strong></h4>\r\n\r\n<h4><strong>(941) 366-6325</strong></h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><strong>Our Psychic Readers and New Age Store in Sarasota</strong></h4>\r\n\r\n<h4 style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Pixie Dust</strong>&nbsp;was founded in 2012 on the basis of the idea of &ldquo;coexistence.&rdquo; &nbsp;It originally opened in a tiny storefront on Main Street just a block down from its current 2400 square foot location at 1476 Main Street. It has always been&nbsp;intended to be a place of love and light, welcoming people of all religions, races and creeds. &nbsp; In Pixie Dust, Buddha statues sit side by side with representations of Pagan goddesses, Christian crosses, Hindu deities, Stars of David and all manner of items representing New Age thought.</span></span></h4>\r\n\r\n<h4><strong>Our Founder</strong></h4>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Founder Johnna White</strong>&nbsp;has&nbsp;<a href=\"http://dustypixie.com/wp-content/uploads/2013/02/Johnna.jpg\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(30, 115, 190); text-decoration: none; transition: all 0.3s ease-in-out;\"><img alt=\"Johnna\" class=\"alignleft size-thumbnail wp-image-140\" src=\"http://dustypixie.com/wp-content/uploads/2013/02/Johnna-150x150.jpg\" style=\"border-bottom-left-radius:3px; border-bottom-right-radius:3px; border-top-left-radius:3px; border-top-right-radius:3px; border:0px; box-sizing:border-box; display:inline; float:left; height:auto; margin-right:1em; max-width:100%; width:150px\" /></a>a double Bachelor of Arts in Literature and Mass&nbsp;Communications, is a Reiki Master/teacher, certified hypnotist, ordained minister, rune,&nbsp;tarot rand tea leaf eader, priestess, and lifelong student of all things metaphysical. &nbsp;After a long career in sales management, opening Pixie Dust is the realization of a lifelong dream. &nbsp;She relocated to Sarasota after many years of residence in Salem, Massachusetts.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><strong>Services offered by appointment at Pixie Dust</strong>:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h5>Intuitive and Psychic Readings</h5>\r\n	</li>\r\n	<li>\r\n	<h5>Massage Therapy</h5>\r\n	</li>\r\n	<li>\r\n	<h5>Classes and Workshops&ndash;See&nbsp;Upcoming Events&nbsp;listings</h5>\r\n	</li>\r\n	<li>\r\n	<h4><span style=\"font-size:12px\">The Work of Byron Katie</span></h4>\r\n	</li>\r\n</ul>\r\n\r\n<h5>&nbsp;</h5>\r\n\r\n<p><img alt=\"\" src=\"https://www.pixiedustsarasota.com/public/admin/ckeditor/cms-ckeditor-img/96241OM-onepencil(2).jpg\" style=\"height:100px; width:100px\" /></p>\r\n</div>', NULL, 'About Pixie Dust Metaphysical Boutique', 'Pixie Dust, metaphysical store, new age books, new age, wiccan supplies, tarot, spiritual jewelry, oracle, psychic readings, Sarasota, New Age Items, downtown Sarasota, massage, Reiki, incense, statues, Buddha, pagan, crystals', 'Sarasota’s unique gifts, psychic readings, crystals, spiritual jewelry, New Age items, massage and energetic treatments, and a lot of whimsy in west Florida', '2018-12-19 18:30:00', '2019-04-08 18:19:41'),
(3, 'About Crystals', '<p><span style=\"font-size:14px\">Pixie Dust offers a wide array of jewelry incorporating the power of healing crystals. &nbsp; All of our jewelry has been energetically cleansed, then charged with Reiki healing energy&nbsp;by a Reiki Master (in most cases, owner Johnna White) and additionally charged with intention by the E Lybra energetic balancing system. &nbsp; &nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Coming from Mother Earth, each crystal has a beautiful&nbsp;healing energy expressed as a vibration. &nbsp;&nbsp;These vibrations match up to many things ranging from plants to various intentions. &nbsp; &nbsp;Below is a list of many crystals and their vibrational properties as well as a list by intention and how to cleanse negative energy.</span></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\">Crystal Intention:</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\">Love: &nbsp;Rose Quartz, Rhodochrosite, Garnet, Emerald, Jade</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\">Protection: &nbsp;Tourmaline, Jet, Obsidian, Onyx, Tiger&#39;s Eye, Smoky Quartz, Fire Agate</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\">Psychic Protection: &nbsp;Tourmaline, Tourmilinated Quartz,&nbsp;Black Moonstone, Clear Quartz, Labradorite</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\">Psychic Development: &nbsp;Moonstone, Amethyst, Lapis Lazuli, Shungite</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:14px\">Fertility: &nbsp;Unakite, Carnelian, Citrine, Moonstone</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><strong>Healing: &nbsp;Turquoise, Golden Healer Quartz, Peridot, &nbsp;Bloodstone</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><strong>Prosperity, Success, Good Luck: &nbsp;Jade, Aventurine, Citrine, Tiger Eye, Emerald, Malachite</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><strong>Meditation, Calming, and Anxiety: &nbsp; Sodalite, Blue Lace Agate, Amethyst, Angelite, Rose Quartz, Aquamarine, Larimar</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><strong>Psychic Development: &nbsp;Zoisite Ruby, Labradorite, Amethyst, Moonstone, Herkimer Diamond, Quartz Crystal, Lapis Lazuli</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Amber</strong> is thought to be a natural pain reliever and calming stone and to help foster patience. &nbsp; It has been used in Europe for many years as teething necklaces for infants. &nbsp; Our teething necklaces are certified Baltic Amber. &nbsp;(<a href=\"https://www.pixiedustsarasota.com/category/jewelry/amber-teething-necklaces\">Click here for our amber teething necklaces.</a>)&nbsp; &nbsp;Amber is also worn to help with fibromyalgia, arthritis and other issues.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Amethyst&nbsp;</strong>a remarkable stone of spirituality and contentment, known for its metaphysical abilities to still the mind and inspire an enhanced meditative state. Its inherent high frequency purifies the aura of any negative energy or attachments, and creates a protective shield of Light around the body, allowing one to remain clear and centered while opening to spiritual direction. Amethyst stimulates the Third Eye, Crown and Etheric Chakras enhancing cognitive perception as well as accelerating the development of intuitive and psychic ability. It initiates wisdom and greater understanding, and is a stone of comfort for those grieving the loss of a loved one. &nbsp;The name Amethyst derives from the Greek word&nbsp;ametusthos, meaning &ldquo;not intoxicated,&rdquo; and can be used to assist in mastering any kind of addiction or obsessive behavior. &nbsp;</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Aquamarine</strong>&nbsp;a<span style=\"font-family:verdana\">ids in clear, heartfelt communication, and helps you to release emotions and old attachments that no longer serve your highest and best. &nbsp;&nbsp;Aquamarine is a stone of the Divine Feminine. It teaches a form of&nbsp;power that is yielding and yet resilient.&nbsp;</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Aventurine</strong>&nbsp;stones are used for inviting wealth, good luck, and abundance into your life. &nbsp;Aventurine is often used as a talisman by gamblers.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Bloodstone</strong> relieves stress and assists with emotional trauma. &nbsp; It is thought to be helpful for blood disorders, kidney issues and infertility.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Blue Lace Agate</strong> is a stone for the throat chakra. &nbsp;It is an&nbsp;excellent stone for calming and stress relief. &nbsp;It diffuses anger, nervous energy and assists in verbal communication. &nbsp;</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Blue Topaz</strong>&nbsp;assists in protecting hearts that are too open as well as opening hearts that are closed. &nbsp; It symbolizes honesty, emotional clarity and deep emotional attachment. &nbsp;It is a stone of enduring friendship.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Carnelian</strong> assists with self-confidence, creativity, happiness and dispels jealousy. &nbsp; It is often used to assist fertility, good health (particularly the stomach and intestines) and vitality.&nbsp; &nbsp;Sacral chakra stone.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Chrysocolla</strong> connects with both the heart and throat chakra allowing you to speak your truth that comes ultimately from your heart. &nbsp; It assists you with emotional balance,&nbsp;feelings of guilt, fear, stress and lack of patience.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Citrine </strong>is often called the stone of wealth. &nbsp;It also assists with metabolism and weight, phobias, self-esteem and shyness.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Clear Quartz Crystal </strong>is a master healing crystal. &nbsp; It can be used for any intention and &nbsp;is used in batteries for a reason. &nbsp;It&nbsp;&nbsp;amplifies whatever energy or intent is programmed into it, and continues to broadcast that energy. &nbsp; It is healing, protective and clears energetic blockages.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Fluorite</strong> helps you to cut ties with the past. &nbsp; It stimulates clarity, focus and positive communication. &nbsp;&nbsp;It is a&nbsp;highly protective and stabilizing stone, useful for grounding and harmonizing&nbsp;spiritual&nbsp;energy. &nbsp;When working with the upper Chakras,&nbsp;<strong>Fluorite&nbsp;</strong>increases intuitive abilities, links the human mind to universal consciousness, and develops connection to spirit.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Garnet </strong>is called the &quot;warrior stone.&quot; &nbsp;It assists with courage, determiniation and is considered physically protective. &nbsp; In ancient times, warriors wore garnet into battle as protection from injury. &nbsp; Root chakra stone</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Kyanite</strong>&nbsp;will align the chakras &amp; amplify high frequency energy. &nbsp;Great for meditation as it calms you &amp; helps you to go deeper. &nbsp;Kyanite is one of the few stones that never retains negative energy and therefore does not need to be cleansed. &nbsp;&nbsp;</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Labradorite </strong>is a gorgeous&nbsp;iridescent&nbsp;stone that flashes peacock&nbsp;<strong>blue</strong>, gold, pale green, and copper hues. &nbsp;Use this stone when you feel drained to restore and revitalize your energy. &nbsp;For self-discovery, it is excellent for awakening one&#39;s own awareness of inner&nbsp;spirit, intuition and psychic abilities.&nbsp;Labradorite&nbsp;is also a&nbsp;powerful protector that&nbsp;creates&nbsp;a shielding force throughout the aura and strengthening natural energies from within.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Lapis Lazuli&nbsp;</strong>is one of the most sought after stones in use since man&#39;s history began. Its deep, celestial&nbsp;<strong>blue</strong>&nbsp;remains the symbol of royalty and honor, gods and power, spirit and vision. It is a universal symbol of wisdom and truth. &nbsp;Corresponds to the third eye and throat chakras.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Larimar </strong>is<span style=\"font-family:verdana\"> the embodiment of the tranquil Sea and Sky energies. Its soft, soothing blues and calming turquoise is streaked with white patterns that resemble sunlight dancing beneath Caribbean waters. It brings the ancient wisdom of Atlantis and the healing power of dolphins to harmonize the body and soul.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Moldavite</strong> i<span style=\"font-family:sourcesanspro,arial,helvetica,sans-serif\"><span style=\"font-family:verdana\">s a&nbsp;</span></span><span style=\"font-family:verdana\">high vibration crystal&nbsp;that is very beneficial to aid you to more easily receive messages from the higher realms.&nbsp;</span>Moldavite&nbsp;crystals have a powerful crystal energy, that is known for its action to stimulate highly beneficial occurrences of&nbsp;coincidence and synchronicity&nbsp;in your life. &nbsp;This unusual green crystal is certainly the stone to choose if you are on the spiritual path and you are looking for a high crystal energy stone to assist you.</span></p>\r\n\r\n	<p><span style=\"font-size:14px\">All of our&nbsp;genuine pieces of this crystal come from&nbsp;only one area of the world in the Czech Republic. The meaning of the name Moldavite &nbsp;relates to the Moldau River in Czechoslovakia. A meteorite of enormous size is known to have crashed in the Czechoslovakian mountain region about 15 million years ago. Its impact is said to have had more power than an atomic explosion. This amazing stone was created by the heat of an incredible impact that had extraordinary force. Its aero-dynamic shape suggests that in all likelihood this attractive green stone fell from the heavens.&nbsp;</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Moonstone</strong> is&nbsp;a nourishing, sensual, deeply feminine energy that knows how to heal and bring you back to wholeness. It is the stone of the mother moon, deep healing waters, and sacred feminine energies. &nbsp; Moonstone helps with the need to control, assists in calming and is protective during travel.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Obsidian </strong>cleanses the aura and helps clear&nbsp;out psychic energies that may have attached to you. &nbsp; Shields against negativity and helps calm feelings of unworthiness, fear or lonliness.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Onyx</strong> prevents the drain of your personal energy. &nbsp; Helps the development of emotional and phsyical strength and stamina. &nbsp; Supportive during times of grief. &nbsp;&nbsp;</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Opal</strong>&nbsp;has always been associated with love and passion, as well as desire and eroticism. It is a seductive stone that intensifies emotional states and releases inhibitions. It can also act as an emotional stabilizer. Wearing an&nbsp;<strong>opal</strong>&nbsp;is said to bring about loyalty and faithfulness.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Peridot</strong> is a stone of the&nbsp;heart chakra. &nbsp;Assists with opening your heart to love and the source of all abundance. &nbsp; Peridot gemstones can help you harness the power of the Sun towards joy, optimism, strength, and an overall better quality of life.You will notice that you have more energy, because you&rsquo;re always thinking about positive outcomes and that makes you want to pursue them. &nbsp;Peridot is said to protect against anxiety, nightmares, and worst-case scenarios &ndash; both real and imagined!</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Pyrite</strong> is also known as &quot;Fool&#39;s Gold.&quot; &nbsp; Because it was so often mistaken for gold by prospectors, it is thought to enhance your drive for wealth. &nbsp;Pyrite assists with happiness, self-confidence and willpower. &nbsp;</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Rhodochrosite</strong> is a wonderful stone to help you learn to love yourself unconditionally and to have compassion for yourself and others. &nbsp; Rhodochrosite helps with depression, emotional pain and anxiety. &nbsp; Many who suffer from PTSD carry rhodochrosite to help them cope.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><strong>Rose Quartz</strong> has a gentle energy that draws love, increases &nbsp;self-esteem and assists to ease rage, depression, guilt, or anxiety. &nbsp;It encourages self-care, forgiveness and happiness.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Ruby</strong> is a personal power stone.&nbsp;&nbsp;It boosts your energy levels and promotes high self-esteem, intuition, and&nbsp;spiritual<strong>&nbsp;</strong>wisdom. &nbsp;<strong>Ruby</strong>&nbsp;is a symbol of good fortune, pure love, and loyalty.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Selenite</strong> is one of the few stones that never needs to be energetically cleaned and has the power to cleanse other crystals. &nbsp;Selenite emits powerful positive energy. &nbsp;The powerful vibration of&nbsp;<strong>Selenite</strong>&nbsp;can clear, open, and activate the Crown and Higher Chakras and is excellent for all types of&nbsp;spiritual&nbsp;work.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Shungite</strong> is best known for its powerful protection from harmful EMF (Electro Magnetic Frequency) that is emitted through cell phones, computers, radio towers and more. &nbsp;Shungite is thought to be more than two million years old. &nbsp; It is found primarily in one area of Russia. &nbsp; &nbsp;Shungite is a powerful protector from negative energies, including psychic attack. &nbsp; It provides healing on all levels including mental, physical, emotional and spiritual.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Sodalite </strong>slows an overactive mind and helps with emotional and spiritual balance. &nbsp; This throat chakra stone improves communication. &nbsp;Sodalite has a&nbsp;calming effect that makes it easier to attain inner peace and facilitates logical thinking.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Tiger Eye</strong> is a stone of wealth, protection and vitality. &nbsp;Tiger Eye&nbsp;helps you to release fear and anxiety and aids harmony and&nbsp;balance. It stimulates taking action, and helps you to make decisions with discernment and understanding, and unclouded by your emotions.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Tourmaline (Black)</strong> &nbsp;Black tourmaline&nbsp;&nbsp;is a powerful stone for protection against negative energy of all kinds including psychic protection and EMF protection. It is also a strong&nbsp;spiritual<strong>&nbsp;</strong>grounding stone, and is one of the most popular crystals to be used for&nbsp;metaphysical&nbsp;purposes.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Tourmaline (Green) </strong>&nbsp;Green tourmaline is a heart chakra stone that has powerful healing energies for the heart both physically and emotionally. &nbsp;Green tourmaline has&nbsp;properties of happiness . It will give you pleasure and a sense of happiness.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Tourmaline (Pink)</strong> &nbsp;Pink tourmaline heals broken hearts. &nbsp;<strong>Pink Tourmaline</strong>&nbsp;assists with the release of emotional pain and old destructive feelings, supporting the healing of the heart and generating feelings of confidence and trust.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><strong>Unakite</strong> is a heart chakra stone that eases the soul. &nbsp; It also assists with infertility and internal organs.</span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><a href=\"https://www.pixiedustsarasota.com/category/jewelry/reiki-charged-gemstone-bead-bracelets\">​Click here for Reiki and E-Lybra charged crystal bracelets.</a>&nbsp; &nbsp; <a href=\"https://www.pixiedustsarasota.com/category/jewelry/crystal-point-pendants\">Click here to view our vibrationally charged crystal point pendants.</a></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"https://www.pixiedustsarasota.com/category/jewelry/crystal-point-pendants\">C</a><a href=\"https://www.pixiedustsarasota.com/category/jewelry/fine-jewelry-pixie-dust-satya-energy-muse-saraswati\">heck out our high quality, sterling silver crystal gemstone jewelry here.</a>&nbsp; &nbsp;<a href=\"https://www.pixiedustsarasota.com/category/jewelry/fine-jewelry-pixie-dust-satya-energy-muse-saraswati\">C</a><a href=\"https://www.pixiedustsarasota.com/category/jewelry/prayer-mala-necklaces\">rystal Prayer Mala Necklaces can be found by clicking here</a>&nbsp; &nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><a href=\"https://www.pixiedustsarasota.com/category/crystals-and-stones/selenite\">Selenite&nbsp;lamps are here.</a>&nbsp; &nbsp; &nbsp; <a href=\"https://www.pixiedustsarasota.com/category/crystals-and-stones/worry-stones-and-engraved-stones\">&nbsp;Click this link for crystal worry stones, engraved chakra sets and more.&nbsp;</a> &nbsp; &nbsp;<a href=\"https://www.pixiedustsarasota.com/category/crystals-and-stones\">Crystal category</a></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:verdana\"><span style=\"font-size:10px\">*Please note that crystals are not intended to replace medical care. &nbsp; Please use crystals in addition to care from your healthcare provider.</span></span></p>', '64638.jpg', 'Crystal Information', 'Crystal information, healing crystals, protection, crystals, amethyst, garnet, quartz, aventurine citrine ruby, tourmaline kyanite, obsidian, crystals for love, crystals for money, crystals for protection', 'Coming from Mother Earth, each crystal has a beautiful healing energy expressed as a vibration.   These vibrations match up to many things ranging from plants to various intentions.    Below is a list of many crystals and their vibrational properties as well as a list by intention and how to cleanse negative energy.', '2018-12-19 18:30:00', '2019-04-05 20:03:58'),
(4, 'Terms & Conditions', '<p>If you have questions about a product, feel free to give us a call at the store or email info@pixiedustsarasota.com. &nbsp; We will try to answer your questions as quickly as possible.</p>\r\n\r\n<ul>\r\n	<li>Orders will ship 3-5 business days from the order date. &nbsp; &nbsp;</li>\r\n	<li>Returns are&nbsp;accepted only in the case of damaged or broken merchandise or&nbsp;order error on our part. &nbsp;&nbsp;</li>\r\n	<li>Returns for reasons other than the ones above will incur&nbsp;a 20% restocking fee and cost of return shipping.</li>\r\n	<li><strong>Privacy Policy: </strong>&nbsp; Your privacy is assured. &nbsp;We will not distribute or sell your information. &nbsp;</li>\r\n</ul>', NULL, 'Policies', 'return, privacy policy', 'returns, privacy policy,', '2018-12-19 18:30:00', '2019-03-30 23:52:32'),
(5, 'Downtown Parking', '<h4><span style=\"font-size:14px\"><span style=\"font-family:verdana\">Parking in Downtown Sarasota&nbsp;can sometimes be a challenge. &nbsp; While there is street parking available, there are several downtown parking garages in which finding a space is easier. &nbsp; <strong>The State Street garage</strong> is the <em>closest to our store</em>, but all are only two to three blocks away from our location. &nbsp; Parking lot locations downtown&nbsp;are: &nbsp;</span></span></h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>State Street Garage &nbsp;</strong></h3>\r\n\r\n<p>1538 State Street</p>\r\n\r\n<p><img alt=\"State Street Garage\" src=\"https://www.sarasotafl.gov/Home/ShowPublishedImage/460/636395574804500000\" style=\"border:0px; box-sizing:border-box; float:right; font-family:noto sans,sans-serif; font-size:14px; height:120px; margin-left:10px; max-width:100%; vertical-align:middle; width:250px\" /><br />\r\nThe State Street Parking garage provides over 400 parking spaces for the downtown core shopping, dining and business. Handicap parking is locatednext to the elevators on each parking level. Parking spaces are located on levels 2 through 6, with motorcycle and bicycle parking on the ground floor. There are four (4) electric vehicle charging stations located on level 2. &nbsp; Free for the first 2 hours.</p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>\r\n<h4><strong>The Palm Avenue Garage</strong></h4>\r\n\r\n<p>1289 North Palm Ave</p>\r\n\r\n<p><img alt=\"Parking Operations\" src=\"https://www.sarasotafl.gov/Home/ShowPublishedImage/458/636395574460730000\" style=\"border:0px; box-sizing:border-box; float:right; height:188px; margin-left:10px; max-width:100%; vertical-align:middle; width:250px\" /></p>\r\n</div>\r\n\r\n<p>Garage parking is available at the award-winning Palm Avenue Garage, which is located one block from Main Street on North Palm Avenue, only steps away from 5 points intersection in downtown. The garage will park 729 vehicles, and has handicap parking located each floor close to the elevators. The Palm Avenue parking garage is a perfect location to park for short or long term stays in downtown. There are four (4) electric vehicle charging stations located on level 1. &nbsp; Free for the first two hours.</p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4><strong>The 2<span style=\"font-size:12.449999809265137px\">nd</span>&nbsp;Street Garage at Whole Foods</strong></h4>\r\n\r\n<p><img alt=\"wf_20garage_20second_20street\" src=\"https://www.sarasotafl.gov/Home/ShowPublishedImage/462/636395575273270000\" style=\"border:0px; box-sizing:border-box; float:right; height:138px; margin-left:10px; max-width:100%; vertical-align:middle; width:250px\" />1400 Block of 2<span style=\"font-size:10.5px\">nd</span>&nbsp;Street</p>\r\n\r\n<p>The 2nd Street Garage is located between First and Second Street, directly across from Whole Foods. Ground floor parking is intended for customers of Whole Foods, while the second and third level of the garage are open to the public (except where posted). The public parking access ramp is located on Second Street, near the corner of Central Ave.</p>\r\n\r\n<p>There are time restrictions in the facility which the City Parking Division monitors and issues citation for time violations. The time restrictions are as follows:</p>\r\n\r\n<ul>\r\n	<li><strong>Ground Level</strong>: 2 Hours&nbsp;</li>\r\n	<li><strong>Level 2-3</strong>: 4 hours</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'Downtown Parking', 'Parking in Downtown Sarasota, parking garages, parking lot, downtown Sarasota', 'Parking Downtown can sometimes be a challenge.   While there is street parking available, there are several downtown parking garages in which finding a space might be easier.   The State Street garage is the closest but none are more than just two to three blocks away from our location.', NULL, '2019-03-30 23:56:36'),
(8, 'Welcome to Pixie Dust Metaphysical Boutique!', '<p><strong>Sarasota&rsquo;s unique gifts, psychic readings, crystals, spiritual jewelry, New Age items, massage and energetic treatments, and a lot of whimsy in west Florida</strong></p>\r\n\r\n<p>Our metaphysical store carries a variety of spiritual jewelry, crystals, New Age books, statues, Buddhas, fairies, mermaids, runes, pagan and Wiccan supplies, Sarasota&rsquo;s widest variety of tarot and oracle card decks and much more!&nbsp; We also offer therapeutic massage, sound bath treatments, Reiki treatments, chakra clearing and other energetic healing services.&nbsp; Visit us in person at our Main Street location downtown Sarasota, Florida, or check out our online store to shop for the best jewelry, incense, magical statues, and everything else New Age.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have psychic readers in our Sarasota store every week to answer your questions.&nbsp; Call us to schedule your intuitive readings!&nbsp; Walk ins are always welcome</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We also organize a variety of New Age events, psychic readings and metaphysical workshops with the best healers and psychic readers from Sarasota and surrounding communities in Florida.&nbsp; &nbsp; Look at our Events page for listings of metaphysical events.</p>', '', 'Welcome to Pixie Dust Metaphysical Boutique!', 'Welcome to Pixie Dust Metaphysical Boutique!', 'Welcome to Pixie Dust Metaphysical Boutique!', NULL, '2019-03-26 18:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `color_code`, `created_at`, `updated_at`) VALUES
(3, 'Green', '0A7D27', '2019-04-12 08:14:18', '2019-04-15 00:20:47'),
(4, 'RED', 'FF0808', '2019-04-15 00:17:49', '2019-04-15 00:17:49'),
(5, 'Blue', '2E1CBA', '2019-04-15 00:21:00', '2019-04-15 00:21:00'),
(6, 'moonstone', 'FCFF96', '2019-05-01 02:00:51', '2019-05-01 02:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percentage` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=Active,2=InActive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `coupon_code`, `discount_percentage`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '123456', 5, '2019-06-19', '2019-08-31', 0, '2019-06-19 01:08:19', '2019-09-05 03:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Newsletter Email', '<td class=\"esd-stripe\" esd-custom-block-id=\"4044\" align=\"center\">\r\n    <table class=\"es-content-body\" style=\"background-color: rgb(253, 252, 221);\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fdfcdd\" align=\"center\">\r\n        <tbody>\r\n            <tr>\r\n                <td class=\"esd-structure es-p40t es-p20r es-p20l esd-checked\" esd-general-paddings-checked=\"true\" style=\"background-image:url(https://tlr.stripocdn.email/content/guids/CABINET_63fbbc11db6741389cc3292b09a63e6d/images/54601519912578667.jpg);background-repeat: repeat;\" align=\"left\">\r\n                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td class=\"esd-container-frame\" width=\"560\" valign=\"top\" align=\"center\">\r\n                                    <table style=\"border-collapse: separate;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n                                        <tbody>\r\n                                            <tr>\r\n                                                <td class=\"esd-block-text es-p15t\" align=\"center\">\r\n                                                    <p style=\"color: #58a535; font-size: 32px; font-family: lora, georgia, times\\ new\\ roman, serif; line-height: 120%;\"><strong>Happy</strong></p>\r\n                                                    <p style=\"color: #58a535; font-size: 43px; font-family: lora, georgia, times\\ new\\ roman, serif; line-height: 120%;\"><strong>St. Patrick\'s Day</strong></p>\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td class=\"esd-block-image es-p15t es-p15b\" align=\"center\">\r\n                                                    <a target=\"_blank\"> <img class=\"adapt-img\" src=\"https://tlr.stripocdn.email/content/guids/CABINET_63fbbc11db6741389cc3292b09a63e6d/images/35871519912769647.png\" alt=\"17th March\" style=\"display: block;\" title=\"17th March\" width=\"176\"> </a>\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td class=\"esd-block-text es-p15t es-p20b es-p15r es-p15l\" align=\"center\">\r\n                                                    <p style=\"color: #58a535; font-size: 18px;\">May your blessings outnumber the shamrocks that grow and may trouble avoid you, wherever you go. Thank you for trusting LawServices. Happy St. Patrick\'s Day!<br></p>\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td class=\"esd-block-text es-p25b es-p10r es-p10l\" align=\"center\">\r\n                                                    <p style=\"color: #58a535; font-size: 16px;\"><em>Thomas Brown, CEO of LawServices</em></p>\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td class=\"esd-block-image\" align=\"center\">\r\n                                                    <a target=\"_blank\"> <img class=\"adapt-img\" src=\"https://tlr.stripocdn.email/content/guids/CABINET_63fbbc11db6741389cc3292b09a63e6d/images/87631519915074761.png\" alt=\"\" style=\"display: block;\" width=\"560\"> </a>\r\n                                                </td>\r\n                                            </tr>\r\n                                        </tbody>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</td>', NULL, NULL),
(2, 'Sub Admin :: Password Mail', '<body>\r\n    <table width=\"100%\" style=\"border:1px solid #EEE; background-color:#FFF; font-size:14px;\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tr>\r\n        <td style=\"background:#000; text-align:center;\">\r\n          <img src=\"https://www.pixiedustsarasota.com/public/images/logo.png\"/>\r\n        </td>\r\n    </tr>\r\n    \r\n    <tr>\r\n        <td>\r\n          <div style=\"min-height:300px; padding:35px; color:#555; font-size:14px;\">\r\n              Dear <strong>%USERNAME%</strong> ,\r\n              <div style=\"padding-left:30px; line-height:20px;\">\r\n                <strong style=\"font-size:20px;\"><br/>\r\n                    Your Login credential details as follows.\r\n                </strong><br/><br/>\r\n                \r\n                <strong>Login URL :</strong> https://www.pixiedustsarasota.com/admin <br>\r\n                <strong>Email :</strong> %USEREMAIL% <br>\r\n                <strong>Password: </strong> %USERPASSWORD% <br>\r\n                <br/><br/>\r\n                \r\n              </div>\r\n              Thanks<br/>\r\n              <strong>%ADMINNAME%</strong><br/>\r\n              <strong>%ADMINEMAIL%</strong>\r\n          </div>\r\n        </td>\r\n    </tr>\r\n    \r\n    <tr>\r\n          <td style=\"text-align:center; color:#fff; background-color:#000;\" height=\"35\">\r\n              All rights &copy; Pixiedust.  %CURRENTYEAR%\r\n          </td>\r\n        </tr>\r\n  </table>\r\n</body>', '2019-09-05 07:01:00', '2019-09-05 07:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_cms`
--

CREATE TABLE `event_cms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_cms`
--

INSERT INTO `event_cms` (`id`, `title`, `slug`, `description`, `image`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 'Intro to Intuitive Tarot with Michael Newton-Brown', 'intro-to-intuitive-tarot-with-michael-newton-brown', '<p><span style=\"font-size:14px\"><strong>When: Three Wednesdays March 27, April 3, April </strong></span><strong><span style=\"font-size:14px\">10</span></strong><span style=\"font-size:14px\"><strong> 6-8 pm</strong></span></p>\r\n\r\n<p>Must sign up for all three</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Learn to read the Tarot Cards in just a few hours.</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Reading the Tarot is :</strong></span></p>\r\n\r\n<p>A surefire conversation starter at parties. Stimulating to your intuition, and imagination. An answer your little everyday questions, as well larger decisions. Pointing the way when you are overwhelmed. Reading for family, and friends. Directly connected to weight loss, smooth skin, and great hair. Not really. Just plain fun.</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Learn a new skill...</strong></span></p>\r\n\r\n<p>In this lively, and entertaining class, you will learn a quick way to begin to read. You will be reading the cards immediately. You will be confidently reading for yourself, as well as for your fellow classmates.</p>\r\n\r\n<p>This immersive course turns the usual way of learning The Tarot Cards completely on its head. You begin looking at the cards intuitively, instead of spending hours memorizing lists of boring meanings.</p>\r\n\r\n<p>Uncover what the symbols, and colors mean. Discover how simple Numerology affects the Tarot Cards. Master the differences between the Major and Minor Arcana. Understand the different personalities of the suits of cards. Sense how card meanings can change with other cards nearby. Grasp the many variations of a simple three-card reading.</p>\r\n\r\n<p>This in depth course will take time to learn both the Major and Minor Arcana cards, including the traits of the four suits of Wands, Swords, Cups, and Pentacles. We will study their relationship to each other as well as to the four elements, symbolism, and numerology. From simple three card readings, and we will build up to larger spreads. This fast paced class will be focused on using your intuition to read the cards, and to trust it. You will be practicing as we learn, and be giving readings to others, as well as receiving readings. There will be handouts to support what you learn. You will leave this immersive day with a firm knowledge of how to continue your study of the Tarot Cards.</p>\r\n\r\n<p>Please bring an empty spiral notebook and pen to begin to create your Tarot journal. You will need The Rider Waite Tarot card deck, as we will be teaching using that system. There are several versions, and sizes (Approximately $20). You can purchase a deck at Pixie Dust. Just be sure that you are getting a version of The Rider Waite deck. You will be provided with handouts. $55 registration fee online, $65 at the door for the entire three evening course.</p>\r\n\r\n<p>This three evening course is inclusive, and builds upon the information in the previous class. You must plan to attend all three evenings.</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>With Michael Newton-Brown</strong></span></p>', NULL, 'Introduction to Intuitive Tarot', 'tarot, learn tarot, tarot class, metaphysical, tarot course, card reading, fortune telling', 'n this lively, and entertaining class, you will learn a quick way to begin to read. You will be reading the cards immediately. You will be confidently reading for yourself, as well as for your fellow classmates. \r\n\r\nThis immersive course turns the usual way of learning The Tarot Cards completely on its head. You begin looking at the cards intuitively, instead of spending hours memorizing lists of boring meanings.', '2019-03-06 06:55:40', '2019-03-13 13:17:41'),
(3, 'Test 1', 'test-1', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;</span><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '37311crystals.jpg', 'Test 1', 'Test 1', 'Test 1', '2019-03-06 06:55:57', '2019-03-13 13:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `intutive_price_settings`
--

CREATE TABLE `intutive_price_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `intutive_timing` time NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intutive_price_settings`
--

INSERT INTO `intutive_price_settings` (`id`, `intutive_timing`, `price`, `created_at`, `updated_at`) VALUES
(1, '00:15:00', '30.00', '2019-01-29 21:30:00', '2019-01-31 01:39:26'),
(2, '00:30:00', '60.00', '2019-01-29 18:30:00', '2019-02-16 00:55:18'),
(3, '01:00:00', '110.00', '2019-01-29 18:30:00', '2019-02-16 00:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `intutive_reading_bookings`
--

CREATE TABLE `intutive_reading_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_mins` int(11) DEFAULT NULL,
  `booking_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_note` text COLLATE utf8mb4_unicode_ci,
  `off_status` int(11) DEFAULT '0',
  `cancel_status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intutive_reading_bookings`
--

INSERT INTO `intutive_reading_bookings` (`id`, `user_id`, `booking_time`, `booking_date`, `booking_mins`, `booking_email`, `booking_note`, `off_status`, `cancel_status`, `created_at`, `updated_at`) VALUES
(1, 4, '12:15', '2019-06-17', 15, 'Null', 'Null', 0, 1, '2019-06-17 00:44:03', '2019-06-17 00:44:37'),
(2, 4, '12:15', '2019-06-17', 15, 'Null', 'Null', 0, 0, '2019-06-17 00:49:44', '2019-06-17 00:49:44'),
(3, 4, '14:30', '2019-06-29', 15, 'Null', 'Null', 0, 1, '2019-06-29 03:03:46', '2019-06-29 03:21:03'),
(4, 10, '11:15', '2019-07-16', 15, 'Null', 'Null', 0, 0, '2019-07-15 04:14:23', '2019-07-15 04:14:23'),
(5, 10, '12:15', '2019-07-16', 15, 'Null', 'Null', 0, 0, '2019-07-15 04:15:02', '2019-07-15 04:15:02'),
(6, 10, '11:15', '2019-07-17', 15, 'Null', 'Null', 0, 0, '2019-07-15 04:16:28', '2019-07-15 04:16:28'),
(7, 4, '12:00', '2019-07-30', 15, NULL, NULL, 0, 0, '2019-07-29 07:43:20', '2019-07-29 07:43:20'),
(8, 4, '11:15,11:30', '2019-07-30', 30, NULL, NULL, 0, 0, '2019-07-29 07:43:31', '2019-07-29 07:43:31'),
(9, 4, '15:00,15:15', '2019-07-30', 30, NULL, NULL, 0, 0, '2019-07-29 08:09:08', '2019-07-29 08:09:08'),
(10, 9, '12:45', '2019-08-10', 15, NULL, NULL, 0, 0, '2019-08-09 04:00:28', '2019-08-09 04:00:28'),
(11, 9, '11:45', '2019-08-25', 15, NULL, NULL, 0, 0, '2019-08-24 00:55:45', '2019-08-24 00:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `massage_price_settings`
--

CREATE TABLE `massage_price_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `massage_timing` time NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `massage_price_settings`
--

INSERT INTO `massage_price_settings` (`id`, `massage_timing`, `price`, `created_at`, `updated_at`) VALUES
(1, '00:30:00', '39.00', '2019-01-30 18:30:00', '2019-01-31 01:41:40'),
(2, '01:00:00', '75.00', '2019-01-30 18:30:00', '2019-01-30 18:30:00'),
(3, '01:30:00', '110.00', '2019-01-30 18:30:00', '2019-01-30 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `massage_therapy_bookings`
--

CREATE TABLE `massage_therapy_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_mins` int(11) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=Paid,0=Not Paid',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_note` text COLLATE utf8mb4_unicode_ci,
  `off_status` int(11) DEFAULT '0',
  `cancel_status` int(11) DEFAULT '0',
  `account_details` text COLLATE utf8mb4_unicode_ci,
  `admin_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `massage_therapy_bookings`
--

INSERT INTO `massage_therapy_bookings` (`id`, `user_id`, `booking_time`, `booking_date`, `booking_mins`, `paid_amount`, `payment_status`, `transaction_id`, `booking_email`, `booking_note`, `off_status`, `cancel_status`, `account_details`, `admin_notes`, `created_at`, `updated_at`) VALUES
(1, 1, '13:30', '2019-06-17', 30, '0.00', 1, 'Trns3534OK', NULL, NULL, 1, 0, NULL, NULL, '2019-06-17 01:26:25', '2019-08-24 00:52:24'),
(2, 4, '15:00', '2019-06-29', 30, '39.00', 1, 'TRNS23423OK4332', NULL, NULL, 0, 1, 'sdfsd', 'sdfdsf', '2019-06-28 03:53:55', '2019-06-29 03:37:31'),
(3, 4, '15:30', '2019-07-03', 30, '39.00', 1, 'TRNS2432432', NULL, NULL, 0, 0, NULL, NULL, '2019-07-03 03:50:00', '2019-07-03 03:50:00'),
(4, 11, '11:00,11:30', '2019-02-20', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-09 04:05:18', '2019-08-09 04:05:18'),
(5, 9, '12:30', '2019-08-10', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-09 04:19:48', '2019-08-09 04:19:48'),
(6, 9, '12:00', '2019-08-25', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-24 00:56:03', '2019-08-24 00:56:03'),
(7, 9, '13:00', '2019-08-25', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-24 01:25:52', '2019-08-24 01:25:52'),
(8, 9, '11:30', '2019-08-26', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-24 01:27:13', '2019-08-24 01:27:13'),
(9, 9, '12:30', '2019-08-26', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-24 04:03:00', '2019-08-24 04:03:00'),
(10, 9, '13:30', '2019-08-26', 30, '39.00', 1, '3sww2s4v', NULL, NULL, 0, 0, NULL, NULL, '2019-08-24 04:07:29', '2019-08-24 04:07:50'),
(11, 9, '12:00', '2019-09-01', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-08-31 00:33:51', '2019-08-31 00:33:51'),
(12, 4, '15:30', '2019-09-04', 30, '39.00', 1, 'Trns3534OK', NULL, NULL, 0, 1, 'sadsadasd', NULL, '2019-09-03 04:45:11', '2019-09-03 04:52:00'),
(13, 9, '12:30', '2019-09-16', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-09-14 01:48:11', '2019-09-14 01:48:11'),
(14, 9, '12:00', '2019-09-15', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-09-14 02:11:26', '2019-09-14 02:11:26'),
(15, 9, '13:30,14:00', '2019-09-19', 60, '75.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-09-14 02:17:27', '2019-09-14 02:17:27'),
(16, 9, '12:00', '2019-09-21', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-09-20 08:26:03', '2019-09-20 08:26:03'),
(17, 9, '12:00', '2019-09-21', 30, '39.00', 0, NULL, NULL, NULL, 0, 0, NULL, NULL, '2019-09-20 08:34:36', '2019-09-20 08:34:36'),
(18, 9, '12:00', '2019-09-21', 30, '39.00', 1, 'a4h3qsak', NULL, NULL, 0, 0, NULL, NULL, '2019-09-20 08:35:10', '2019-09-20 08:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `master_orders`
--

CREATE TABLE `master_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `bill_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_post_code` int(11) DEFAULT NULL,
  `bill_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_amount` decimal(10,2) DEFAULT NULL,
  `tax_per` decimal(10,0) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT '0' COMMENT '1=Paid,0=Unpaid',
  `order_status` tinyint(4) DEFAULT '0' COMMENT '1=Ship,0=Not Shipped',
  `shipping_date` date DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci,
  `shipping_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_orders`
--

INSERT INTO `master_orders` (`id`, `user_id`, `bill_first_name`, `bill_last_name`, `email`, `bill_phone_number`, `bill_address1`, `bill_address2`, `bill_city`, `bill_post_code`, `bill_state`, `bill_country`, `ship_full_name`, `ship_phone_number`, `ship_address1`, `ship_address2`, `ship_city`, `ship_post_code`, `ship_state`, `ship_country`, `total_amount`, `discount_amount`, `discount_percentage`, `coupon_code`, `shipping_amount`, `tax_per`, `tax_amount`, `transaction_id`, `payment_status`, `order_status`, `shipping_date`, `order_notes`, `shipping_url`, `tracking_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Trideep', 'Dakua', 'suresh@bletindia.com', '7205821247', 'Bhubaneswar', 'Odisha', 'Trideep', 751010, 'OD', 'India', 'Trideep Dakua', '7205821247', 'Bhubaneswar', 'Odisha', 'BBSR', '751010', 'OD', 'India', '5.93', '0.25', 5, '123456', '1.00', '6', '0.00', 'TRNS34543OK', 1, 0, NULL, NULL, NULL, NULL, '2019-08-02 06:31:36', '2019-08-05 05:32:23'),
(2, 4, 'Trideep', 'Dakua', 'trideep@bletindia.com', '7205821247', 'Bhubaneswar', 'Odisha', 'Trideep', 751010, 'OD', 'India', 'Trideep Dakua', '7205821247', 'Bhubaneswar', 'Odisha', 'BBSR', '751010', 'OD', 'India', '16.96', '0.74', 5, '123456', '3.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-06 04:44:17', '2019-08-06 04:44:17'),
(3, 4, 'Trideep', 'Dakua', 'trideep@bletindia.com', '7205821247', 'Bhubaneswar', 'Odisha', 'Trideep', 751010, 'OD', 'India', 'Trideep Dakua', '7205821247', 'Bhubaneswar', 'Odisha', 'BBSR', '751010', 'OD', 'India', '5.93', '0.25', 5, '123456', '1.00', '6', '0.28', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-06 04:53:49', '2019-08-06 04:53:49'),
(4, 4, 'Trideep', 'Dakua', 'trideep@bletindia.com', '7205821247', 'Bhubaneswar', 'Odisha', 'Trideep', 751010, 'OD', 'India', 'Trideep Dakua', '7205821247', 'Bhubaneswar', 'Odisha', 'BBSR', '751010', 'OD', 'India', '5.93', '0.25', 5, '123456', '1.00', '6', '0.28', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-06 05:00:08', '2019-08-06 05:00:08'),
(5, 4, 'Trideep', 'Dakua', 'trideep@bletindia.com', '7205821247', 'Bhubaneswar', 'Odisha', 'Trideep', 751010, 'OD', 'India', 'Trideep Dakua', '7205821247', 'Bhubaneswar', 'Odisha', 'BBSR', '751010', 'OD', 'India', '5.65', '0.25', 5, '123456', '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-06 05:03:59', '2019-08-06 05:03:59'),
(6, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.65', '0.25', 5, '123456', '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-08 06:24:46', '2019-08-08 06:24:46'),
(7, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.65', '0.25', 5, '123456', '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-08 06:25:00', '2019-08-08 06:25:00'),
(8, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '11.31', '0.49', 5, '123456', '2.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-24 02:11:38', '2019-08-24 02:11:38'),
(9, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.90', '0.00', 0, NULL, '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-31 00:38:58', '2019-08-31 00:38:58'),
(10, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.93', '0.25', 5, '123456', '1.00', '6', '0.28', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-31 00:39:19', '2019-08-31 00:39:19'),
(11, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.93', '0.25', 5, '123456', '1.00', '6', '0.28', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-31 00:39:37', '2019-08-31 00:39:37'),
(12, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.90', '0.00', 0, NULL, '1.00', '6', '0.00', '1yznh979', 1, 0, NULL, NULL, NULL, NULL, '2019-08-31 00:44:38', '2019-09-03 04:39:05'),
(13, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '10.80', '0.00', 0, NULL, '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-08-31 00:59:05', '2019-08-31 00:59:05'),
(14, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '10.80', '0.00', 0, NULL, '1.00', '6', '0.00', 'pwxhvam3', 1, 0, NULL, NULL, NULL, NULL, '2019-08-31 00:59:21', '2019-08-31 00:59:41'),
(15, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.90', '0.00', 0, NULL, '1.00', '6', '0.00', 'r7b60yxj', 1, 0, NULL, NULL, NULL, NULL, '2019-08-31 01:40:14', '2019-08-31 01:40:39'),
(16, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.90', '0.00', 0, NULL, '1.00', '6', '0.00', 'd0vpq98q', 1, 0, NULL, NULL, NULL, NULL, '2019-08-31 01:50:27', '2019-08-31 01:50:44'),
(17, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '5.90', '0.00', 0, NULL, '1.00', '6', '0.00', '6yrrbgbm', 1, 0, NULL, NULL, NULL, NULL, '2019-08-31 01:53:42', '2019-08-31 01:53:56'),
(18, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '-23.50', '0.00', 0, NULL, '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-09-14 01:57:24', '2019-09-14 01:57:24'),
(19, 9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', 'test', 'test2', 'Manoranjan', 751010, 'Odisha', 'India', 'Manoranjan Swain', '1234567890', 'test', 'test2', 'bbsr', '751010', 'Odisha', 'India', '-23.50', '0.00', 0, NULL, '1.00', '6', '0.00', NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-09-14 01:57:34', '2019-09-14 01:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_12_18_052822_create_banners_table', 1),
(7, '2018_12_20_055408_create_cms_pages_table', 2),
(8, '2018_12_20_072324_create_categories_table', 3),
(9, '2018_12_27_063400_create_news_letters_table', 4),
(10, '2018_12_27_125308_create_email_templates_table', 4),
(11, '2018_12_28_045630_create_products_table', 5),
(12, '2019_01_01_062500_create_coupon_codes_table', 6),
(13, '2019_01_08_122044_create_product_images_table', 7),
(14, '2019_01_09_122353_create_temp_carts_table', 8),
(15, '2019_01_17_054718_create_user_registrations_table', 9),
(16, '2019_01_17_070139_create_master_orders_table', 10),
(17, '2019_01_17_065549_create_order_items_table', 11),
(18, '2019_01_28_053132_create_service_schedules_table', 12),
(19, '2019_01_30_061904_create_intutive_price_settings_table', 13),
(20, '2019_01_30_061941_create_Massage_price_settings_table', 13),
(21, '2019_02_06_065524_create_intutive_reading_bookings_table', 14),
(22, '2019_02_06_070041_create_massage_therapy_bookings_table', 14),
(23, '2019_02_14_111949_create_seo_page_settings_table', 15),
(24, '2019_03_06_101244_create_event_cms_table', 16),
(26, '2019_04_01_093713_create_other_cms_pages_table', 17),
(27, '2019_04_12_130809_create_colors_table', 18),
(28, '2019_04_15_061803_create_sizes_table', 19),
(29, '2019_04_15_065000_create_product_stocks_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_letters`
--

INSERT INTO `news_letters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'soumya@bletindia.com', '2018-12-27 07:33:30', '2018-12-27 07:33:30'),
(2, 'trideep@bletindia.com', '2019-02-25 19:43:49', '2019-02-25 19:43:49'),
(5, 'Sunnybird329@aol.com', '2019-03-08 00:53:57', '2019-03-08 00:53:57'),
(6, 'johnnawhite@verizon.net', '2019-03-12 01:31:42', '2019-03-12 01:31:42'),
(7, 'adudley88@hotmail.com', '2019-03-13 23:34:47', '2019-03-13 23:34:47'),
(8, 'caroltownsan@hotmail.com', '2019-03-17 18:22:18', '2019-03-17 18:22:18'),
(9, 'lbwood1@cox.net', '2019-03-20 19:59:22', '2019-03-20 19:59:22'),
(10, 'gohawkssa8@gmail.com', '2019-03-20 21:14:34', '2019-03-20 21:14:34'),
(11, 'masdiscipulos@gmail.com', '2019-04-09 09:00:39', '2019-04-09 09:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `size` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `shipping_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `stock_id`, `size`, `color`, `color_code`, `product_id`, `unit_price`, `quantity`, `total_price`, `shipping_price`, `created_at`, `updated_at`) VALUES
(1, 1, 379, 'Small', 'moonstone', 'FCFF96', 349, '4.90', 1, '4.90', '1.00', '2019-08-02 06:31:37', '2019-08-02 06:31:37'),
(2, 2, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-06 04:44:17', '2019-08-06 04:44:17'),
(3, 2, 379, 'Small', 'moonstone', 'FCFF96', 349, '4.90', 1, '4.90', '1.00', '2019-08-06 04:44:17', '2019-08-06 04:44:17'),
(4, 2, 377, 'Large', 'Blue', '2E1CBA', 349, '4.90', 1, '4.90', '1.00', '2019-08-06 04:44:17', '2019-08-06 04:44:17'),
(5, 3, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-06 04:53:49', '2019-08-06 04:53:49'),
(6, 4, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-06 05:00:08', '2019-08-06 05:00:08'),
(7, 5, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-06 05:04:00', '2019-08-06 05:04:00'),
(8, 6, 377, 'Large', 'Blue', '2E1CBA', 349, '4.90', 1, '4.90', '1.00', '2019-08-08 06:24:46', '2019-08-08 06:24:46'),
(9, 8, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-24 02:11:38', '2019-08-24 02:11:38'),
(10, 8, 377, 'Large', 'Blue', '2E1CBA', 349, '4.90', 1, '4.90', '1.00', '2019-08-24 02:11:38', '2019-08-24 02:11:38'),
(11, 9, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-31 00:38:58', '2019-08-31 00:38:58'),
(12, 10, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-31 00:39:19', '2019-08-31 00:39:19'),
(13, 11, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-31 00:39:37', '2019-08-31 00:39:37'),
(14, 12, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '1.00', '2019-08-31 00:44:39', '2019-08-31 00:44:39'),
(15, 13, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 2, '9.80', '2.00', '2019-08-31 00:59:05', '2019-08-31 00:59:05'),
(16, 14, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 2, '9.80', '2.00', '2019-08-31 00:59:21', '2019-08-31 00:59:21'),
(17, 15, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '2.00', '2019-08-31 01:40:14', '2019-08-31 01:40:14'),
(18, 16, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '2.00', '2019-08-31 01:50:27', '2019-08-31 01:50:27'),
(19, 17, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', 1, '4.90', '2.00', '2019-08-31 01:53:42', '2019-08-31 01:53:42'),
(20, 18, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', -5, '-24.50', '-5.00', '2019-09-14 01:57:24', '2019-09-14 01:57:24'),
(21, 19, 378, 'Medium', 'Green', '0A7D27', 349, '4.90', -5, '-24.50', '-5.00', '2019-09-14 01:57:34', '2019-09-14 01:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `other_cms_pages`
--

CREATE TABLE `other_cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `cms_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `img_vid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_cms_pages`
--

INSERT INTO `other_cms_pages` (`id`, `cms_page`, `title`, `description`, `img_vid`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 'Psychic Readers', 'Jay--Astrology and Tarot', '<p>Jay is a serious student of astrology. &nbsp;His level of knowledge, the mathmatics involved in astrology, as well as his intuitive ablilities give you a birth chart reading that will show you many things about yourself. &nbsp;It will reinforce your strengths, address your weaknesses and give you a direction for growthi and transformation. &nbsp;It is recommended to spend at least 1/2 hour for an astrology reading. &nbsp;&nbsp;&nbsp;Jay also offers 15 minute tarot readings that are in depth and also throw in a little bit of astrology as well. &nbsp; &nbsp;Jay is personally at the store on Monday and Wednesday and welcomes telephone and skype appointments any day.&nbsp; &nbsp;</p>', '74732.jpg', NULL, NULL, NULL, '2019-04-01 04:26:04', '2019-04-05 16:20:04'),
(3, 'Psychic Readers', 'Michael--Tarot Card Readings, Medium, Lenormand Oracle card readings', '<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:transparent; color:rgb(0, 0, 0)\">Michael began his study of&nbsp;Tarot Cards more than 45 years ago. &nbsp; Since that time, he has mastered the art of reading tarot as well as developing his skills in mediumship, reading the Lenormand oracle and more. &nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:transparent; color:rgb(0, 0, 0)\">Michael attended the Arthur Findlay College for the Advancement of Spiritualism and Psychic Sciences in Stansted England. &nbsp;</span><span style=\"background-color:transparent; color:rgb(0, 0, 0)\">He is a member of The Tarot Association, an international organization of professional readers. He also attends The Reader&rsquo;s Studio in New York. Both organizations provide his code of ethics. &nbsp;&nbsp;</span><span style=\"background-color:transparent; color:rgb(0, 0, 0)\">Michael&rsquo;s goal is to gently guide you through probabilities, and possibilities, giving you the tools to take control of your life. &nbsp;&nbsp;</span></span></p>', '99139.JPG', NULL, NULL, NULL, '2019-04-01 04:26:32', '2019-04-05 00:01:21'),
(4, 'Blog', 'The Difference Between Tarot and Oracle Cards', '<p style=\"text-align:justify\">We are often asked the difference between tarot and oracle cards. &nbsp; Here&#39;s your answer!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', '99967.mp4', 'The Difference Between Tarot and Oracle Cards', 'Tarot, Oracle, cards, difference', 'We are often asked the difference between tarot and oracle cards.   Here\'s your answer!', '2019-04-01 04:35:33', '2019-04-05 19:27:43'),
(5, 'Blog', 'Coming Soon!', '<p style=\"text-align:justify\"><img alt=\"\" src=\"https://www.pixiedustsarasota.com/public/admin/ckeditor/cms-ckeditor-img/faith trust and pixie dust.jpg\" style=\"float:left; height:360px; margin:10px; width:300px\" /><span style=\"font-size:14px\"><span style=\"font-family:verdana\">Here in our blog, we&#39;ll be adding information about everything ranging from astrology to sacred geometry to how to play a singing bowl. &nbsp; We are so grateful to have loyal customers and followers and want to be able to give back to you. &nbsp; If you have something you&#39;d like to know about, please send us an email and we will add an answer to your question to our blog.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:verdana\">In Gratitude,</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', NULL, 'Coming Soon!', 'Pixie Dust, blog, information, how to,', 'Here in our blog, we\'ll be adding information about everything ranging from astrology to sacred geometry to how to play a singing bowl.   We are so grateful to have loyal customers and followers and want to be able to give back to you.   If you have something you\'d like to know about, please send us an email and we will add an answer to your question to our blog.', '2019-04-01 04:48:51', '2019-04-08 16:29:43'),
(8, 'Massage Therapy', 'Eric Berkel, LMT', '<p style=\"text-align:justify\">Eric holds two degrees in massage therapy and has practiced at top spas for many years. &nbsp; Eric is skilled at Swedish massage, deep tissue, hot stone, cranial sacral and more. &nbsp; He inserts elements of Eastern massage practices to make his massages very healing and relaxing.</p>', '27811.jpg', NULL, NULL, NULL, '2019-04-01 05:12:57', '2019-04-09 05:25:10'),
(11, 'Psychic Readers', 'Peggy--Clairvoyant, Angel Readings, Palm Reading', '<p><span style=\"font-size:14px\">Peggy is clairvoyant. &nbsp;<span style=\"color:rgb(29, 33, 41)\">In a reading she touches your hands and &quot;feels&quot; the beauty of your soul&#39;s energy and your guardian angels. &nbsp;She relays messages to you that your angels want you to know.&nbsp; Peggy is energetic and upbeat. &nbsp; Her readings are fun and touching at the same time.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Peggy is originally a Jersey girl who now splits her time between Florida and Connecticut. &nbsp; She reads in person at Pixie Dust on Fridays from October to July. &nbsp;We are happy to arrange telephone readings for her when she&#39;s gone North.</span></p>', '92836.jpg', NULL, NULL, NULL, '2019-04-01 07:53:07', '2019-04-05 00:00:03'),
(12, 'Massage Therapy', 'Hazel Young, LMT', '<p style=\"text-align:justify\">Hazel graduated from Sarasota School of Massage and has been healing ever since. &nbsp; Hazel is skilled at Swedish massage, deep tissue, hot stone, cranial sacral and Thai massage. &nbsp; She is also a Reiki practitioner.</p>', '61920.jpg', NULL, NULL, NULL, '2019-04-01 07:58:58', '2019-04-09 05:22:18'),
(13, 'About Symbols', 'Saint Christopher', '<p>Saint Christopher is the patron saint of protection. &nbsp; Wearing a St. Christopher medalion is thought to protect you during travel.</p>', '61236.jpg', NULL, NULL, NULL, '2019-04-02 00:54:09', '2019-04-05 20:01:14'),
(14, 'About Symbols', 'Ankh', '<p><span style=\"font-size:14px\"><span style=\"color:rgb(34, 34, 34); font-family:arial,sans-serif\">The ankh is an ancient Egyptian hieroglyphic symbol that was most commonly used in writing and in art to represent the word for &quot;life&quot; and, by extension, as a symbol of life itself.</span></span></p>', '92416.jpg', NULL, NULL, NULL, '2019-04-02 00:54:50', '2019-04-08 22:28:57'),
(15, 'Psychic Readers', 'Susan--Clairvoyant, Astrology', '<p style=\"text-align:justify\"><span style=\"font-size:14px\">Susan offers a unique reading. &nbsp; She begins with a bit of astrology (she studied with famed astrologer, Isabel Hickey)&nbsp;and then her clairvoyant skills open up and give her messages and guidance from your guides. &nbsp; All of Susan&#39;s clients leave with a handwritten note from Susan about items that came up in the reading. &nbsp;Susan has been reading at Pixie Dust since our small, humble beginning in 2012. &nbsp; Since that time, her clientele have always returned for more of her guidance and loving energy. </span>&nbsp;&nbsp;</p>', '38476.jpg', NULL, NULL, NULL, '2019-04-03 01:47:56', '2019-04-05 00:00:23'),
(18, 'Psychic Readers', 'Tammy--Intuitive Tarot', '<p>Tammy is an intuitive tarot reader. &nbsp; Her connection to spirit guides her to give you messages for your highest and best. &nbsp;Tammy&#39;s readings are no-nonsense and honest. &nbsp; Tammy give readings in person at Pixie Dust on Saturday afternoons and occasional Sundays. &nbsp;She is happy to do telephone readings by appointment.</p>', '98332.jpg', NULL, NULL, NULL, '2019-04-04 23:46:37', '2019-04-05 16:20:34'),
(19, 'Psychic Readers', 'Lydia--Angel Card Readings', '<div class=\"page\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: -webkit-standard;\" title=\"Page 1\">\r\n<div class=\"section\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\">Lydia is an Angel Intuitive who connects with the angelic realm to provide guidance and perspective on life&rsquo;s challenges and questions. She serves as a bridge from the daily grind of responsibility and stresses to relief and wisdom with your Angels and Guides.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\">Lydia is a Certified Angel Intuitive and Advanced Certified Angel Card Reader&auml;by Doreen Virtue. She is also a Licensed Coach with the Institute of HeartMath&acirc;&nbsp;and a Certified Practitioner of Appreciative Inquiry from the Corporation for Positive Change.</span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '37139.jpg', NULL, NULL, NULL, '2019-04-04 23:51:08', '2019-04-05 00:01:06'),
(21, 'Blog', 'Jay Takes A Look At Mars', '<p>Coming soon...JIn this video, Jay will discuss the aspects of planet Mars and give you useful information about the way it affects your daily life.</p>', NULL, 'Jay Takes A Look At Mars', NULL, 'Jay will discuss the aspects of planet Mars and give you useful information about the way it affects your daily life.', '2019-04-05 19:53:28', '2019-04-05 21:19:52'),
(22, 'Blog', 'Flying Wish Paper', '<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\">We first fell in love with Flying Wish Paper back in 2012 in Pixie Dust&#39;s very first few months! &nbsp;Writing an intention on a piece of paper and then burning it has been a standard ritual for many. &nbsp;But, letting that wish fly? &nbsp;This was new! </span></span>&nbsp; &nbsp;<img alt=\"\" src=\"https://www.pixiedustsarasota.com/public/admin/ckeditor/cms-ckeditor-img/FWP_mindful_productshot.jpg\" style=\"float:right; height:417px; width:500px\" /></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\">Though we&#39;ve been carrying and demonstrating Flying Wish Paper for all these years, I still get a feeling of childlike wonder every time that piece of ash lifts off the platform! &nbsp; &nbsp;Flying Wish Paper comes beautifully packaged and includes paper, platforms and a pencil for writing your wish. </span></span>&nbsp; &nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:verdana\">Just write it, light it and let it fly!</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '15939.mp4', 'Flying Wish Paper', 'Flying Wish Paper', 'Just write it, light it and let it fly!', '2019-04-08 16:30:50', '2019-04-09 06:00:10'),
(23, 'About Symbols', 'Triquetra', '<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">An ancient&nbsp;</span>Celtic symbol<span style=\"font-size:14px\">, the triquetra is considered one of the oldest; dating back to as early as 500 BC when it was used to symbolize the triple goddess (maiden-mother-crone). Over the centuries it has become the symbol for the&nbsp;</span>Holy Trinity<span style=\"font-size:14px\">&nbsp;among Christians</span></span></p>', '88478.png', NULL, NULL, NULL, '2019-04-08 22:35:19', '2019-04-08 22:39:39'),
(24, 'About Symbols', 'Pentacle', '<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">A 5-pointed star within a circle, the Pentacle is a key energy-giving and protective Wiccan symbol. It is NOT a symbol of the demonic as Hollywood depicts it. &nbsp; </span></span></p>\r\n\r\n<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">Its five points symbolize the five elements of air, fire, water, earth and the spirit, and the symbol is believed to represent the entire Universe with all aspects of the world coming together to represent the one Divine. The symbol points upwards to denote victory of the spirit over matter.</span></span></p>', '30823.jpg', NULL, NULL, NULL, '2019-04-08 22:44:43', '2019-04-08 22:44:43'),
(25, 'About Symbols', 'Triple Moon', '<p>The&nbsp;<strong>Triple Moon Symbol</strong>&nbsp;is a popular pagan and&nbsp;<strong>Wiccan symbol</strong>&nbsp;used to represent the Goddess. It shows different portions of the lunar cycle, with the moon in three phases &ndash; waxing, full and waning. First, there is a crescent moon that is in a growing/waxing phase. In the center comes a circle representing the full moon, and finally, there is a crescent denoting the diminishing/waning moon. &nbsp;It represents all aspects of divine feminine energy and indicates the three life stages of a woman--maiden, mother and crone. &nbsp;The waxing moon stands for the Maiden and symbolizes purity, youth, new life, beginnings, rejuvenation, excitement, enchantment, and expansion. The full moon represents the Mother energy-- fulfillment, fertility, ripeness, potency, compassion, giving, caring, nurturing, protection and power. The waning moon&nbsp;represents the Crone and stands for maturity, wisdom, experience, knowledge, understanding, completion, death and rebirth. In its entirety, the symbol is believed to signify the eternal cycle of birth, life, and rebirth.</p>', '19255.jpg', NULL, NULL, NULL, '2019-04-08 22:55:32', '2019-04-08 23:02:04'),
(26, 'About Symbols', 'Om', '<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">The Om (Aum) is the most universal of Hindu symbols and its sound is used in meditation. In Hinduism, the word &ldquo;Om&rdquo; is the first syllable in any prayer. More specifically, Om is used to symbolizing the universe and the ultimate reality.</span></span></p>', '60121.png', NULL, NULL, NULL, '2019-04-08 23:01:10', '2019-04-08 23:01:10'),
(27, 'About Symbols', 'Hamsa', '<p>The Hamsa symbol is a powerful Middle Eastern protective symbol. When it is worn with the fingers pointing up it is a protective symbol against negative energy. The open palm itself symbolizes protection. The Hamsa symbol is representative of the Phoenician goddess Tanit. The pictures of Tanit show her with an eye on her palm. Her raised hand is warding off the evil eye and other evil spells. In Judaism, the Hamsa symbol represents the strong hand of God. In Buddism, the Hamsa symbol represents the five chakras. It is worn as a symbol of peace and protection.</p>\r\n\r\n<p>&nbsp;</p>', '46032.jpg', NULL, NULL, NULL, '2019-04-08 23:07:13', '2019-04-08 23:07:13'),
(28, 'About Symbols', 'Eye of Horus', '<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">The Eye of Horus is an Ancient Egyptian symbol. &nbsp;It symbolizes healing, sacrifice restoration and protection.&nbsp;</span></span></p>', '28076.jpg', NULL, NULL, NULL, '2019-04-08 23:25:44', '2019-04-08 23:26:24'),
(29, 'About Symbols', 'Yin Yang', '<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\">The Yin Yang symbol is a circle with two teardrop-shape swirls. The black swirl, the Yin, is associated with femininity, receptivity, and the moon. The white swirl, the Yang, represents the sun, growth, and passion.<br />\r\n&nbsp;<br />\r\nThere is a black dot in the white spiral and a white dot in the black spiral &ndash; these small circles remind us that everything contains the seed of its opposite, and that nothing is absolute. &nbsp;In all Yang, there is Yin, and in all Yin, exists Yang. The symbol represents the belief that everything in the universe consists of these two symbiotic forces.</span></span></p>', '86702.jpg', NULL, NULL, NULL, '2019-04-08 23:32:19', '2019-04-08 23:32:19'),
(30, 'About Symbols', 'Lotus Flower', '<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">The lotus has been used in many teachings of Buddhism to impart the true nature of all mankind. The roots of the lotus plant are stuck deep in the mud, but it still grows above murky water and blossoms into a beautiful, sweet-smelling flower. The lotus can be analogous to how we rise from our sufferings to reach enlightenment, beauty, and clarity. &nbsp;It represents growth and transformation.</span></span></p>', '52576.jpg', NULL, NULL, NULL, '2019-04-08 23:37:45', '2019-04-08 23:37:45'),
(31, 'About Symbols', 'Flower of Life', '<p>The Flower of Life is the most well known of sacred geometry symbols.&nbsp;This mystical symbol can be found in almost all major religions in the entire world. The Flower of Life is said to be over 6,000 years old and is composed of several concentric, equal, overlapping circles. It is said to contain vital information on the secrets of the universe and all living things. The earliest record of this symbol has been dated to 645 BC. &nbsp;Many spiritual and mystical geometric figures have been drawn from the pattern of the Flower of Life. The sacred Tree of Life in Kabbalah teachings, for instance, may be taken from the concentric patterns within the Flower of Life. Leonardo da Vinci, himself, was able to derive platonic solids and the golden ratio of phi from the Flower of Life. &nbsp;</p>', '24546.jpg', NULL, NULL, NULL, '2019-04-08 23:42:47', '2019-04-08 23:43:21'),
(32, 'About Symbols', 'Evil Eye Talisman', '<p><span style=\"font-size:14px\">Belief in the evil eye dates back almost 3000 years to ancient Greece and Rome. &nbsp; Wearing an evil eye talisman is believed to provide protection against evil forces. &nbsp;It has meaning and symbolism in almost every country and every religion in the world including Judaism, Hindu, Buddhism, Christianity, and Islam. &nbsp;As a result, it&nbsp;is considered to be one of the strongest symbols in the world.</span></p>', '23424.jpg', NULL, NULL, NULL, '2019-04-09 23:27:09', '2019-04-09 23:27:09'),
(33, 'About Symbols', 'Merkaba', '<p><span style=\"font-family:verdana\"><span style=\"font-size:14px\">The word Merkaba is actually composed of three separate words: Mer, which means light, Ka, which means spirit and Ba, which means Body. Put together, these three words connote the union of spirit with the body, surrounded by light. The symbol, which takes the shape of a star, is believed to be a divine vehicle made entirely of light and designed to transport or connect the spirit and body to higher realms.</span></span></p>', '51621.png', NULL, NULL, NULL, '2019-04-09 23:32:04', '2019-04-09 23:32:04'),
(34, 'About Symbols', 'Metatron\'s Cube', '<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\"><span style=\"color:rgb(34, 34, 34)\">In sacred geometry, Archangel&nbsp;</span><a href=\"https://www.pixiedustsarasota.com/products/archangel-metatron-statue\">Metatron</a><span style=\"color:rgb(34, 34, 34)\">, the angel of life oversees the flow of energy in a mystical&nbsp;</span>cube<span style=\"color:rgb(34, 34, 34)\">&nbsp;known as&nbsp;</span>Metatron&#39;s Cube<span style=\"color:rgb(34, 34, 34)\">, which contains all of the geometric shapes in God&#39;s creation and represents the patterns that make up everything God has made.</span></span></span></p>', '63674.png', NULL, NULL, NULL, '2019-04-09 23:39:05', '2019-04-09 23:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('trideep@bletindia.com', '$2y$10$zVlEFh8ql2r1A6iKww9LdO7zdhfBgIpnlgzMbQtZmT8L2f30PYada', '2019-04-08 16:54:45'),
('suresh@bletindia.com', '$2y$10$v4rh1vRcIhevxVzskoDL0eKpH6AhkwwItWSB/d1LADj0.7ubKVApO', '2019-06-04 23:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `paypal_environment` tinyint(4) NOT NULL COMMENT '1=Sandbox,2=Live',
  `paypal_email` varchar(255) NOT NULL,
  `tax_per` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `paypal_environment`, `paypal_email`, `tax_per`, `created_at`, `updated_at`) VALUES
(1, 1, 'suresk_1314104870_biz@yahoo.com', '6', '2019-06-20 13:03:44', '2019-06-20 07:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `shipping_price` decimal(10,2) DEFAULT NULL,
  `best_seller` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prd_cs_opt` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `price`, `discount`, `discount_price`, `shipping_price`, `best_seller`, `image`, `prd_cs_opt`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(4, 1, 5, 'COEXIST PENDANT', 'coexist-pendant', '<p>Silver plated COEXIST Pendant encompasses many of the world&#39;s religions. &nbsp;</p>\r\n\r\n<p>C--Muslim crescent moon and star</p>\r\n\r\n<p>O--Wiccan Pentacle &nbsp;</p>\r\n\r\n<p>E--Buddhism &nbsp;</p>\r\n\r\n<p>X--Jewish Star of David &nbsp;</p>\r\n\r\n<p>I--Humanist &nbsp;</p>\r\n\r\n<p>S--Taoist Yin Yang &nbsp;</p>\r\n\r\n<p>T--Christian Cross</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '9.99', NULL, NULL, '4.95', 0, '51639IMG_1547.jpeg', 0, 'COEXIST PENDANT', 'COEXIST, cross, muslim, jewish, christian, yin yang, buddhism, Wiccan', 'COEXIST pendant encompasses many of the world\'s religions.  \r\n  PIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 10:50:20', '2019-04-01 01:24:50'),
(5, 1, 5, 'Hamsa Earrings', 'hamsa-earrings', '<p>Silver plated Hamsa earrings. &nbsp; The Hamsa hand is a protective symbol. &nbsp; &nbsp;</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>', '9.99', NULL, NULL, '4.95', 0, '35202IMG_1545.jpeg', 0, 'Hamsa Earrings', 'Hamsa, earrings, hamsa hand, protective symbol', 'Hamsa earrings.  PIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 11:29:19', '2019-04-01 01:19:21'),
(6, 1, 5, 'Seed of Life Earrings', 'seed-of-life-earrings', '<p>Silver Plated Seed of Life Earrings. &nbsp;&nbsp;PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>', '9.99', NULL, NULL, '4.95', 0, '47500IMG_1544 2.jpeg', 0, 'Seed of Life Earrings', 'Seed of Life, sacred geometry, new age, earrings', 'Silver plated Seed of Life Earrings.  PIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 12:21:17', '2019-04-01 01:17:12'),
(7, 1, 5, 'Dreamcatcher with turquoise stone', 'dreamcatcher-with-turquoise-stone', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:medium\">Silver plated&nbsp;Dreamcatcher with turquoise stone &nbsp;</span></p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>', '9.99', NULL, NULL, '4.95', 0, '23048IMG_1543.jpeg', 0, 'Dreamcatcher with turquoise stone', 'Dreamcatcher, earrings turquoise, shamanism', 'Silver plated Dreamcatcher with turquoise stone.  PIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 12:23:22', '2019-04-01 01:15:03'),
(8, 1, 5, 'Quartz Crystal Engraved Pentacle Keychain', 'quartz-crystal-engraved-pentacle-keychain', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:medium\">Pentacle Keychain &nbsp;Engraved in Quartz Crystal. &nbsp; &nbsp;</span></p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>', '9.99', NULL, NULL, '4.95', 0, '11798IMG_1533.jpeg', 0, 'Pentacle Keychain', 'Pentacle Keychain, pentacle, quartz, crystal', 'Pentacle Keychain  PIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 12:27:29', '2019-04-01 01:12:38'),
(9, 1, 5, 'Solid OM earrings', 'solid-om-earrings', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:medium\">Solid OM earrings &nbsp; </span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:medium\">Silver plated over white metal &nbsp;&nbsp;</span></p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>', '9.99', NULL, NULL, '4.95', 0, '55660IMG_1531.jpeg', 0, 'Solid OM earrings', 'om earrings, om, sacred, symbols,', 'Solid OM earrings   Silver Plated.  PIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 12:31:11', '2019-04-01 01:09:58'),
(10, 1, 5, 'Pentacle earrings', 'pentacle-earrings', '<p>Pentacle earrings &nbsp; Silver plated white metal &nbsp;</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>\r\n\r\n<p>&nbsp;</p>', '9.99', NULL, NULL, '4.95', 0, '85164IMG_1530.jpeg', 0, 'Pentacle earrings', 'Pentacle, pentacle earrings, Wicca, Metaphysical, New Age', 'Pentacle earrings  \r\nPIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 12:34:04', '2019-04-01 01:00:28'),
(11, 1, 5, 'Drawing Down the Moon Goddess Earrings with amethyst stone', 'drawing-down-the-moon-goddess-earrings-with-amethyst-stone', '<p>Drawing Down the Moon Goddess Earrings with amethyst stone. &nbsp; &nbsp;Silver plated white metal.</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>\r\n\r\n<p>&nbsp;</p>', '9.99', NULL, NULL, '4.95', 1, '70662IMG_1528.jpeg', 0, 'Drawing Down the Moon Goddess Earrings with amethyst stone', 'Moon, Goddess , Earrings, amethyst, Wicca,', 'Drawing Down the Moon Goddess Earrings with amethyst stone\r\nPIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-01-25 12:35:51', '2019-04-01 00:44:04'),
(12, 1, 13, 'Sterling Silver Moonstone Marquis Pendant', 'sterling-silver-moonstone-marquis-pendant', '<p>Gorgeous flash of color&nbsp;in this large moonstone pendant set in 925 Sterling Silver. &nbsp;18&quot; silver chain included &nbsp;Pendant measures approximately 1 1/2 inches by 1/2 inch</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '61.00', NULL, NULL, '5.00', 0, '27807IMG_4378.JPG', 0, 'Moonstone Marquis Pendant', 'moonstone, moonstone pendant, sterling silver pendant, sterling silver moonstone', 'moonstone pendant set in 925 Sterling Silver', '2019-02-01 22:27:04', '2019-02-02 03:08:50'),
(13, 1, 13, 'Sterling Silver Oval Moonstone Pendant', 'sterling-silver-oval-moonstone-pendant', '<p>Beautiful oval moonstone set in 925 Sterling Silver. &nbsp; 18&quot; chain included</p>', '33.00', NULL, NULL, '5.00', NULL, '95337IMG_4379.JPG', 0, 'Sterling Silver Oval Moonstone Pendant', 'moonstone pendant, moonstone necklace, oval moonstone, sterling silver moonstone', 'Beautiful oval moonstone set in 925 Sterling Silver.', '2019-02-01 22:32:11', '2019-02-01 22:32:11'),
(14, 1, 13, 'Dainty Moonstone Swirl Sterling Silver Pendant', 'dainty-moonstone-swirl-sterling-silver-pendant', '<p>Lovely moonstone set in a dainty sterling silver swirl setting. &nbsp;18&quot; chain included. &nbsp;</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>', '29.99', NULL, NULL, '5.00', 0, '12868IMG_4382.JPG', 0, 'Dainty Moonstone Swirl Sterling Silver Pendant', 'moonstone pendant, sterling silver moonstone pendant', 'Lovely moonstone set in a dainty sterling silver swirl setting', '2019-02-01 22:36:26', '2019-02-02 03:26:12'),
(15, 1, 13, 'Triple Moonstone Sterling Silver Pendant', 'triple-moonstone-sterling-silver-pendant', '<p>Bring out your inner goddess!</p>\r\n\r\n<p>Three round moonstone cabochons look like a triple full moon! &nbsp;Set in 925 Sterling Silver and includes 18&quot; silver chain. &nbsp;</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>', '39.00', NULL, NULL, '5.00', 0, '57860IMG_4375.JPG', 0, 'Triple Moonstone Sterling Silver Pendant', 'moonstone, moonstone pendant, full moon, sterling silver moonstone', 'Three round moonstone cabochons look like a triple full moon!  Set in 925 Sterling Silver and includes 18\" silver chain', '2019-02-01 22:41:46', '2019-02-02 03:25:55'),
(16, 1, 13, 'Moonstone and Spirals Sterling Silver Earrings', 'moonstone-and-spirals-sterling-silver-earrings', '<p>Glowing round moonstone cabochon stones set in 925 sterling silver spirals. &nbsp;</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>', '39.00', NULL, NULL, '5.00', 0, '18343IMG_4372.JPG', 0, 'Moonstone and Spirals Sterling Silver Earrings', 'moonstone, moonstone earrings, sterling silver moonstone', 'round moonstone cabochon stones set in 925 sterling silver spirals', '2019-02-01 23:08:35', '2019-02-02 03:25:01'),
(17, 1, 13, 'Moonstone Oval Sterling Silver Earrings', 'moonstone-oval-sterling-silver-earrings', '<p>Oval moonstones set in 925 sterling silver earrings. &nbsp;</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>', '33.00', NULL, NULL, '5.00', 0, '27246IMG_4373.JPG', 0, 'Oval moonstones set in 925 sterling silver earrings', 'Oval moonstones set in 925 sterling silver earrings', 'Oval moonstones set in 925 sterling silver earrings', '2019-02-01 23:11:51', '2019-02-02 03:24:31'),
(18, 1, 13, 'Moonstone Sterling Silver Stud Earrings', 'moonstone-sterling-silver-stud-earrings', '<p>Moonstone stud earrings 3x5 cabochon set in 925 Sterling Silver</p>', '19.99', NULL, NULL, '5.00', 0, '69852IMG_0595.JPG', 0, 'Moonstone Sterling Silver Stud Earrings', 'Moonstone Sterling Silver Stud Earrings', 'Moonstone stud earrings 3x5 cabochon set in 925 Sterling Silver\r\n\r\nMoonstone is prized for its moonlike sheen.  It brings the feminine energy of the moon.   It brings calm, peace and balance.   Moonstone helps you embrace your psychic gifts and your innate personal power.   Moonstone is thought to aid in keeping you safe during travel.', '2019-02-01 23:16:53', '2019-02-02 02:44:14'),
(19, 1, 13, 'Moonstone Sterling Silver Bracelet', 'moonstone-sterling-silver-bracelet', '<p>Glowing oval moonstone cabochons set in 925 Sterling Silver 7-8&quot; bracelet. &nbsp;</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>\r\n\r\n<p>Also available in amethyst and labradorite.</p>', '39.00', NULL, NULL, '5.00', 0, '79365IMG_4331.JPG', 0, 'Moonstone Sterling Silver Bracelet', 'Moonstone,  Sterling Silver, Moonstone Bracelet', 'Moonstone Sterling Silver Bracelet', '2019-02-01 23:20:20', '2019-02-02 03:23:23'),
(20, 1, 13, 'Moonstone Sterling Silver Celtic Knot Necklace', 'moonstone-sterling-silver-celtic-knot-necklace', '<p>Gorgeous sterling silver Celtic knot necklace with glowing&nbsp;moonstone. &nbsp;Chain is 18&quot; with the knot measuring approximately 2&quot;.</p>\r\n\r\n<p>Moonstone is&nbsp;prized for its moonlike sheen. &nbsp;It brings the feminine&nbsp;energy of the moon. &nbsp; It brings calm, peace and balance. &nbsp; Moonstone helps you embrace your psychic gifts and your innate personal power. &nbsp; Moonstone is thought to aid in keeping you safe during travel.</p>\r\n\r\n<p>&nbsp;</p>', '79.99', NULL, NULL, '5.00', 1, '68510IMG_0573.JPG', 0, 'Moonstone sterling silver Celtic knot necklace', 'moonstone necklace, sterling moonstone necklace, celtic knot necklace', 'Moonstone necklace set in sterling silver Celtic knot', '2019-02-02 03:01:14', '2019-02-02 03:01:14'),
(21, 1, 13, 'Labradorite Evil Eyes Sterling Silver Pendant', 'labradorite-evil-eyes-sterling-silver-pendant', '<p>Though not technically the&nbsp;traditional evil eye, this sterling silver pendant with eye shaped setting for three labradorite stones will keep you safe and sound.</p>', '45.00', NULL, NULL, '5.00', NULL, '90702IMG_4384.JPG', 0, 'Labradorite Sterling Silver Pendant', 'Labradorite, Labradorite pendant, Labradorite sterling silver', 'Sterling silver pendant with three eye shaped set labradorite stones', '2019-02-02 03:22:42', '2019-02-02 03:22:42'),
(22, 1, 13, 'Labradorite Oval Pendant', 'labradorite-oval-pendant', '<p>Labradorite oval set in sterling silver. &nbsp; 18&quot; silver chain included. &nbsp;</p>\r\n\r\n<p>Labradorite is a stone of dreams and intuition. &nbsp;It is a stone of magic, a crystal of shamans, diviners,&nbsp;healers and all who seek knowledge and guidance. &nbsp;Labradorite helps awaken your awareness of inner spirit, intuition and psychic abilities.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '33.00', NULL, NULL, '5.00', NULL, '64568IMG_4388.JPG', 0, 'Oval Labradorite Sterling Silver Pendant', 'Labradorite, Sterling Silver Labradorite, Labradorite necklace, Labradorite pendant', 'Oval Labradorite Sterling Silver Pendant on 18\" chain.', '2019-02-02 03:41:31', '2019-02-02 03:41:31'),
(23, 1, 13, 'Horizontal Oval Labradorite Pendant', 'horizontal-oval-labradorite-pendant', '<p>Stunning&nbsp;labradorite oval cabochon set horizontally in sterling silver for a unique look. &nbsp;18&quot; chain included. &nbsp;Cabochon measures approximately 20 mm x 12 mm.</p>\r\n\r\n<p>Labradorite is a stone of dreams and intuition. &nbsp;It is a stone of magic, a crystal of shamans, diviners,&nbsp;healers and all who seek knowledge and guidance. &nbsp;Labradorite helps awaken your awareness of inner spirit, intuition and psychic abilities.</p>', '49.00', NULL, NULL, '5.00', 1, '88516IMG_4389.JPG', 0, 'Horizontal Oval Labradorite Pendant', 'Labradorite necklace, labradorite, labradorite pendant', 'Oval pendant with labradorite set horizontally for a unique style.', '2019-02-02 03:48:52', '2019-02-02 03:48:52'),
(24, 1, 13, 'Petite Labradorite Celtic Knot Pendant', 'petite-labradorite-celtic-knot-pendant', '<p>Petite labradorite Celtic knot design sterling silver pendant. &nbsp;18&quot; chain included. &nbsp; Labradorite cabochon is approximately 3x5 mm.</p>\r\n\r\n<p>Labradorite is a stone of dreams and intuition. &nbsp;It is a stone of magic, a crystal of shamans, diviners,&nbsp;healers and all who seek knowledge and guidance. &nbsp;Labradorite helps awaken your awareness of inner spirit, intuition and psychic abilities.</p>', '25.99', NULL, NULL, '5.00', NULL, '31671IMG_4387.JPG', 0, 'Petite Labradorite Celtic Knot Sterling Silver Pendant', 'Labradorite, Celtic knot, labradorite sterling', 'Petite labradorite Celtic knot sterling silver pendant', '2019-02-02 03:56:00', '2019-02-02 03:56:00'),
(25, 1, 1, 'Blue Goldstone Mala Bead Necklace', 'blue-goldstone-mala-bead-necklace', '<p>108 bead blue goldstone prayer mala bead necklace</p>', '27.00', NULL, NULL, '5.00', NULL, '87836IMG_0452.JPG', 0, 'blue goldstone mala bead necklace', 'mala bead necklace, blue goldstone, blue goldstone mala, Jap mala', 'Blue goldstone 108 bead mala necklace', '2019-02-02 04:02:47', '2019-02-02 04:02:47'),
(26, 1, 1, 'Amethyst Mala Necklace', 'amethyst-mala-necklace', '<p>Hand knotted 108 bead natural amethyst prayer mala necklace</p>', '35.00', NULL, NULL, '5.00', 1, '93876amethyst mala.jpg', 0, 'Amethyst Mala Necklace', 'amethyst mala, 108 bead mala, jap mala, prayer mala', '108 bead hand-knotted amethyst prayer mala necklace', '2019-02-02 04:05:55', '2019-02-02 04:05:55'),
(27, 1, 1, 'Tiger Eye Mala Bead Necklace', 'tiger-eye-mala-bead-necklace', '<p>Tiger Eye 108 bead mala prayer necklace. &nbsp; 8 mm beads.</p>\r\n\r\n<p>&nbsp;</p>', '35.00', NULL, NULL, '5.00', NULL, '74355IMG_3270.JPG', 0, 'Tiger Eye Mala Bead Necklace', 'Tiger eye mala, Jap mala, mala bead,', 'Tiger Eye Mala Bead Necklace', '2019-02-02 04:14:47', '2019-02-02 04:14:47'),
(28, 1, 1, 'Chakra Prayer Mala Bead Necklace', 'chakra-prayer-mala-bead-necklace', '<p>Chakra prayer mala necklace. &nbsp;108 &nbsp;six&nbsp;mm bead in chakra colors</p>', '25.00', NULL, NULL, '5.00', NULL, '88193fullsizeoutput_ddd.jpeg', 0, 'Chakra Stone Mala Bead Necklace', 'chakra, chakra mala bead, mala necklace, prayer beads', 'Chakra stone mala bead necklace', '2019-02-02 04:22:21', '2019-02-02 04:22:21'),
(29, 1, 1, 'Clear Quartz Mala Bead Necklace', 'clear-quartz-mala-bead-necklace', '<p>Clear Quartz 108 bead mala prayer necklace.</p>', '17.00', NULL, NULL, '5.00', NULL, '78408crystal mala.jpeg', 0, 'Clear quartz crystal mala bead necklace', 'Clear quartz, quartz crystal mala, mala bead necklace, mala, prayer beads', 'Clear quartz crystal mala bead necklace', '2019-02-02 04:25:25', '2019-02-02 04:25:25'),
(30, 1, 1, 'Opalite Mala Bead Necklace', 'opalite-mala-bead-necklace', '<p>108 Opalite 8 mm bead prayer mala necklace</p>', '25.00', NULL, NULL, '5.00', NULL, '49250opalite mala.jpg', 0, 'Opalite Mala Bead Necklace', 'mala bead, 108, jap mala, opalite mala', 'Opalite Mala bead Necklace 108 8 mm beads', '2019-02-02 04:28:29', '2019-02-02 04:28:29'),
(31, 1, 1, 'Lava Stone Prayer Mala Bead Necklace', 'lava-stone-prayer-mala-bead-necklace', '<p>Lava Stone 108 Bead Mala Necklace. &nbsp;8 mm lava stone beads are great for aromatherapy. &nbsp; &nbsp;Place a drop of essential oil on lava stone and it will hold the scent.</p>', '27.00', NULL, NULL, '5.00', NULL, '67297lava mala.jpg', 0, 'Lava Stone Mala Bead Necklace', '108 beads, lava stone, mala bead, mala necklace, prayer beads', 'Lava stone Mala Bead Necklace.', '2019-02-02 04:52:07', '2019-02-02 04:52:07'),
(32, 2, 11, 'Freyja', 'freyja', '<p>In Norse mythology, Freyja is the goddess associated with love, sex, fertility, magic war and death. &nbsp; This beloved goddess wears a necklace that controls the elements and a falcon cloak. &nbsp;Her chariot is pulled by cats. &nbsp;</p>\r\n\r\n<p><strong><em>Ships free!</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '79.00', NULL, NULL, '0.00', 1, '47845freya statue.jpg', 0, 'Freyja', 'norse, freya, norse goddess', 'Statue of Norse goddess, Freya', '2019-02-02 05:03:24', '2019-02-02 05:03:24'),
(33, 2, 11, 'Celtic Goddess Brigid', 'celtic-goddess-brigid', '<p><strong>Brigid</strong><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">, the Celtic goddess of fire (the forge and the hearth), poetry, healing, childbirth, and unity.</span></p>\r\n\r\n<p><em><strong><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">Ships free!</span></strong></em></p>', '79.00', NULL, NULL, '0.00', NULL, '98658brigid.jpg', 0, 'Brigid Statue', 'brigid statue, goddess statue, brigid', 'Statue of Celtic goddess Brigid', '2019-02-02 05:07:55', '2019-02-02 05:07:55'),
(34, 2, 2, 'Small Jizo Statue', 'small-jizo-statue', '<p>Small Jizo Bodhisattva wearing red bib. &nbsp; The Japanese Jizo is the protector of women, children and travelers. &nbsp; He is the embodiment of the desire to save all people from suffering. &nbsp; In Japan, Jizo is placed in front of the home wearing red hats or bibs in order to ward off illness.</p>\r\n\r\n<p>Stands 5&quot; high</p>\r\n\r\n<p>&nbsp;</p>', '14.99', NULL, NULL, '5.00', 1, '70650jizo with bib-2.jpg', 0, 'Small Jizo Buddha', 'jizo, buddha, red bib, bodhisattva', 'Small Jizo statue wearing red bib', '2019-02-02 05:15:58', '2019-02-13 01:21:05'),
(35, 2, 2, 'Cheering Buddha', 'cheering-buddha', '<p>Cheering Hotei Buddha just resonates joy!</p>\r\n\r\n<p>Made in gorgeous Blanc de Chine porcelain, this buddha is the epitome of the happiness of the Laughing Buddha! &nbsp;</p>\r\n\r\n<p>6 1/2&quot; wide by 4&quot; high</p>\r\n\r\n<p>&nbsp;</p>', '45.00', NULL, NULL, '5.00', NULL, '16191cheering buddha.jpg', 0, 'Cheering Happy Buddha', 'happy buddha, cheering buddha, laughing buddha, buddha', 'Cheering buddha in Chinese white porcelain.', '2019-02-02 05:34:36', '2019-02-02 05:34:36'),
(36, 2, 2, 'Small Ganesha Statue', 'small-ganesha-statue', '<p><span style=\"color:rgb(34, 34, 34); font-family:arial,sans-serif\">Ganesha is one of the best-known and most worshipped deities in the Hindu pantheon. .</span>Ganesha<span style=\"color:rgb(34, 34, 34); font-family:arial,sans-serif\">&nbsp;is widely revered as the remover of obstacles, bestower of success, the patron of arts and sciences and the deva of intellect and wisdom.</span></p>', '11.00', NULL, NULL, '5.00', NULL, '86375mini ganesh purple.jpg', 0, 'Small Ganesha Statue', 'ganesh, ganesha, ganesha statue', 'Small statue of Ganesha, Lord of Success and Destroyer of Obstacles.', '2019-02-02 05:51:01', '2019-02-02 05:51:01'),
(37, 2, 12, 'Noble Presence', 'noble-presence', '<p>This male angel figurine is wearing a traditional flowing robe. &nbsp; Sure to make a statement in any room. &nbsp; Stands 9&quot; tall and made of high quality resin.</p>', '31.99', NULL, NULL, '5.00', NULL, '26752angel noble presence.jpg', 0, 'Noble Presence Angel', 'angel statue', 'Noble Presence Angel statue', '2019-02-02 06:08:25', '2019-02-02 06:08:25'),
(38, 2, 12, 'Baby Angel in Wings 2 pc set', 'baby-angel-in-wings-2-pc-set', '<p>Baby Angel Sleeping in Wings 2 piece figurine set&nbsp;</p>\r\n\r\n<p>This two piece set features a pair of peacful cherub angels sleeping in heavenly detailed wings decorated with iridescent glitter.</p>\r\n\r\n<ul>\r\n	<li>Angels are 5 1/2&quot; wide</li>\r\n	<li>Made of high quality resin stone</li>\r\n</ul>', '19.99', NULL, NULL, '5.00', NULL, '74042baby angel in wings.jpg', 0, 'Baby Angel Wings 2 pc set', 'Baby angel, angel wings, angel statue', 'Baby Angel Sleeping in Wings 2 piece figurine set', '2019-02-02 06:14:44', '2019-02-02 06:14:44'),
(39, 1, 4, 'Ruby in Zoisite', 'ruby-in-zoisite', '<p>Ruby in Zoisite Reiki Charged Bracelet &nbsp;8 mm beads</p>', '11.11', NULL, NULL, '3.00', NULL, '56408IMG_0506.JPG', 0, 'Ruby In Zoisite Reiki Charged Bead Bracelet', 'ruby, zoisite, reiki charged, bead bracelet', 'Reiki Charged Ruby in Zoisite bead bracelet', '2019-02-02 06:24:28', '2019-02-02 06:24:28'),
(40, 2, 12, 'Weeping Angel', 'weeping-angel', '<p>Bronze angel kneels and weeps for&nbsp;humanity.</p>', '89.99', NULL, NULL, '5.00', 1, '63033IMG_0535.JPG', 0, 'Weeping Angel Statue', 'weeping angel, bronze angel', 'Bronze angel weeps for humanity.', '2019-02-02 06:39:22', '2019-02-02 06:39:22'),
(41, 2, 12, 'Archangel Metatron Statue', 'archangel-metatron-statue', '<p>Bronze Archangel Metatron statue holding Metatron&#39;s Cube. &nbsp;10&quot;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:verdana\">In sacred geometry,&nbsp;Archangel Metatron, the angel of life oversees the flow of energy in a mystical cube known as Metatron&#39;s Cube, which contains all of the&nbsp;geometric shapes&nbsp;in God&#39;s creation and represents the patterns that make up everything God has made.</span></span></p>', '89.99', NULL, NULL, '5.00', 0, '37164metatronstatue.jpg', 0, 'Archangel Metatron Statue', 'Metatron, archangel statue', 'Bronzed Resin Statue of Archangel Metatron', '2019-02-02 06:50:17', '2019-04-09 23:51:56'),
(42, 2, 11, 'Cupid and Psyche', 'cupid-and-psyche', '<p>Cupid and Psyche embody the concept of overcoming the obstacles to love.</p>\r\n\r\n<p>Measures approximately 12&quot; x 7&quot; x 11&quot; &nbsp;</p>\r\n\r\n<p>Made of cold cast resin and appears as marble.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '79.99', NULL, NULL, '0.00', 0, '14994cupid and psyche.jpg', 0, 'Cupid and Psyche', 'cupid, psyche', 'Statue of Cupid and Psyche', '2019-02-02 23:56:16', '2019-02-13 02:01:14'),
(43, 1, 13, 'Sterling Silver bracelet with Oval Labradorite Gemstones', 'sterling-silver-bracelet-with-oval-labradorite-gemstones', '<p>Sterling silver bracelet with luminous oval labradorite stones. &nbsp;</p>\r\n\r\n<p>Fits most wrists 7-8&quot; &nbsp;</p>\r\n\r\n<p>Also available in amethyst and moonstone</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '37.00', NULL, NULL, '5.00', NULL, '95160IMG_4391.JPG', 0, 'Labradorite Sterling Silver Bracelet', 'labradorite bracelet, labradorite, gemstone bracelet', 'Labradorite sterling silver bracelet', '2019-02-03 00:23:22', '2019-02-03 00:23:22'),
(44, 5, 20, 'Seven Chakra Singing Bowl Set', 'seven-chakra-singing-bowl-set', '<p>Seven Chakra Singing Bowl Set includes seven bowls with Sanscrit symbols and colors to correspond with the chakras, the energy centers of the body. &nbsp;</p>\r\n\r\n<ul>\r\n	<li>Red --Root Chakra</li>\r\n	<li>Orange--Sacral Chakra</li>\r\n	<li>Yellow--Solar Plexus Chakra</li>\r\n	<li>Green--Heart Chakra &nbsp;</li>\r\n	<li>Turquoise--Throat&nbsp;Chakra &nbsp;</li>\r\n	<li>Blue--Third Eye Chakra &nbsp;</li>\r\n	<li>Purple--Crown Chakra</li>\r\n</ul>\r\n\r\n<p>Ships free!</p>', '545.00', NULL, NULL, '0.00', NULL, '6474831251.jpg', 0, 'Seven Chakra Singing Bowl Set', 'Seven Chakra Singing Bowl Set, chakra bowl, singing bowl', 'Seven Chakra Singing Bowl Set includes seven bowls with Sanscrit symbols and colors to correspond with the chakras, the energy centers of the body.', '2019-02-03 07:20:25', '2019-02-03 07:20:25'),
(45, 5, 18, 'Om bell chime', 'om-bell-chime', '<p>Hanging brass Om with beads and bells</p>', '11.00', NULL, NULL, '5.00', NULL, '5521931307.jpg', 0, 'Hanging brass Om with beads and bells', 'brass hanger, brass chime, om, bells', 'Hanging brass Om with beads and bells', '2019-02-03 07:27:16', '2019-02-03 07:27:16'),
(47, 5, 18, 'Brass Hanging Triple Goddess Bells', 'brass-hanging-triple-goddess-bells', '<p>Brass Hanging Triple Goddess Bells&nbsp;with beads</p>', '11.00', NULL, NULL, '5.00', NULL, '2814931336.jpg', 0, 'Brass Hanging Triple Goddess Bells', 'Triple goddess, bells, chime', 'Brass Hanging Triple Goddess Bells', '2019-02-03 07:35:04', '2019-02-03 07:35:04'),
(48, 5, 18, 'Brass Hanging Tree of Life Bells', 'brass-hanging-tree-of-life-bells', '<p>Brass Hanging Tree of Life Bells</p>', '11.00', NULL, NULL, '5.00', NULL, '8004731343.jpg', 0, 'Brass Hanging Tree of Life Bells', 'tree of life, bells, chime', 'Brass Hanging Tree of Life Bells', '2019-02-03 07:39:31', '2019-02-03 07:39:31'),
(49, 5, 18, 'Tingshas', 'tingshas', '<p>Made of bell metal alloy for their superior resonating sound quality, these tingshas feature a raised &quot;Om Mani Padme Hum&quot; mantra and are joined by a leather cord. &nbsp;Tingshas ringing sound creat an opening n reality. &nbsp; They are used at the beginning&nbsp;of a meditation period to open the mind for meditation and then at the end to focus our minds back to reality. &nbsp; They are also used in Feng Shui to ring in the four corners of a room to bring in good energy.</p>\r\n\r\n<p>&nbsp;</p>', '39.99', NULL, NULL, '5.00', NULL, '5070131505.jpg', 0, 'Tingshas', 'tingshas, bells, chimes', 'Made of bell metal alloy for their superior resonating sound quality, these tingshas feature a raised \"Om Mani Padme Hum\" mantra and are joined by a leather cord.  Tingshas ringing sound creat an opening n reality.', '2019-02-03 07:49:05', '2019-02-03 07:49:05'),
(50, 5, 19, 'Ceremonial Drum', 'ceremonial-drum', '<p>Traditional, hand crafted drum with a natural skin cover. &nbsp; The beater has been wrapped in leather and attached with a suede cord and two natural feathers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '49.99', NULL, NULL, '5.00', NULL, '1755326323.jpg', 0, 'Ceremonial drum', 'drum, Native American,', 'This traditional, hand crafted drum has a natural skin cover. The beater head has been wrapped in skin and attached with a suede cord and two natural feathers.', '2019-02-03 07:55:59', '2019-02-03 07:55:59'),
(51, 5, 19, 'Egg shaped shaker', 'egg-shaped-shaker', '<p>Simple egg shaped shaker makes a nice percussive sound.</p>', '6.99', NULL, NULL, '5.00', NULL, '1704931126.jpg', 0, 'Egg Shaped Percussion Shaker', 'percussion, shaker,', 'Simple egg shaped shaker makes a nice percussive sound.', '2019-02-03 08:02:03', '2019-02-03 08:02:03'),
(52, 5, 19, 'Mini Maracas (colors vary)', 'mini-maracas-colors-vary', '<p>Maraca is made of five small balls gathered with rattan. &nbsp;It is a very good sounding percussion instrument. &nbsp;Colors vary.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '12.99', NULL, NULL, '5.00', NULL, '3841131160.jpg', 0, 'Mini Maracas', 'shaker, maraca, percussion', 'Maraca made of five small balls gathered with rattan.  It is a very good sounding percussion instrument.  Colors vary.', '2019-02-03 08:08:10', '2019-02-03 08:08:10'),
(53, 1, 4, 'Obsidian Bracelet', 'obsidian-bracelet', '<p>Reiki charged obsidian bracelet &nbsp;</p>\r\n\r\n<p>8 mm beads</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '5.00', NULL, '6217098507.jpg', 0, 'Reiki charged obsidian bracelet', 'reiki charged, obsidian, bead bracelet, bracelet', 'Reiki charged obsidian bracelet', '2019-02-03 08:26:51', '2019-02-03 08:26:51'),
(54, 1, 4, 'Reiki Charged Fluorite Bead Bracelet', 'reiki-charged-fluorite-bead-bracelet', '<p>&nbsp;</p>\r\n\r\n<p>8 mm fluorite bead bracelet has been charged with Reiki healing energy.</p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '5.00', NULL, '2538798505.jpg', 0, 'Fluorite Reiki Charged Bracelet', 'Reiki charged, bead, bracelet, fluorite', '8 mm fluorite bead bracelet has been charged with Reiki healing energy.', '2019-02-03 08:31:58', '2019-02-03 08:31:58'),
(55, 1, 4, 'Reiki Charged Hematite Bead Bracelet', 'reiki-charged-hematite-bead-bracelet', '<p>8 mm hematite bead bracelet has been charged with Reiki healing energy.</p>', '11.11', NULL, NULL, '5.00', 0, '3189698546.jpg', 0, 'Hematite Bead Bracelet', 'hematite, bracelet, bead bracelet', '8 mm hematite bead bracelet has been charged with Reiki healing energy.​', '2019-02-03 08:35:06', '2019-02-03 08:35:46'),
(56, 1, 4, 'Green Aventurine Reiki Charged Bead Bracelet', 'green-aventurine-reiki-charged-bead-bracelet', '<p>Green Aventurine bracelet has been charged with Reiki healing energy.</p>', '11.11', NULL, NULL, '5.00', NULL, '5363998516.jpg', 0, 'Green Aventurine Reiki Charged Bead Bracelet', 'Aventurine, Reiki Charged, Bead, Bracelet', 'Green Aventurine Reiki Charged Bead Bracelet', '2019-02-03 08:38:47', '2019-02-03 08:38:47'),
(57, 1, 4, 'Green Aventurine Reiki Charged Bead Bracelet', 'green-aventurine-reiki-charged-bead-bracelet', '<p>Rose Quartz bracelet has been charged with Reiki healing energy.</p>', '11.11', NULL, NULL, '5.00', NULL, '9462698517.jpg', 0, 'Rose Quartz Reiki Charged Bead Bracelet', 'Rose Quartz, bracelet, Reiki', 'Rose Quartz Reiki Charged Bead Bracelet', '2019-02-03 08:41:11', '2019-02-03 08:41:11'),
(58, 1, 4, 'Sodalite Reiki Charged Bead Bracelet', 'sodalite-reiki-charged-bead-bracelet', '<p>Sodalite bracelet has been charged with Reiki healing energy</p>', '11.11', NULL, NULL, '5.00', NULL, '1432498511.jpg', 0, 'Sodalite Reiki Charged Bead Bracelet', 'Sodalite, bracelet, bead, beads, reiki', 'Sodalite Reiki Charged Bead Bracelet', '2019-02-03 08:44:50', '2019-02-03 08:44:50'),
(59, 1, 4, 'Amethyst Reiki Charged Bead Bracelet', 'amethyst-reiki-charged-bead-bracelet', '<p>Amethyst 6-8 mm bead bracelet has been charged with Reiki healing energy.</p>', '11.11', NULL, NULL, '5.00', NULL, '7461198573.jpg', 0, 'Amethyst Reiki Charged Bead Bracelet', 'Amethyst, Reiki Charged , Bead Bracelet', 'Amethyst bead bracelet charged with Reiki', '2019-02-03 08:47:11', '2019-02-03 08:47:11'),
(60, 1, 4, 'Goldstone Reiki Charged Bead Bracelet', 'goldstone-reiki-charged-bead-bracelet', '<p>8 mm&nbsp;Green Goldstone Beads&nbsp;Reiki Charged&nbsp;Bracelet</p>', '11.11', NULL, NULL, '5.00', NULL, '6239498593.jpg', 0, 'Goldstone Reiki Charged Bead Bracelet', 'goldstone, reiki, bead, bracelet', 'Goldstone Reiki Charged Bead Bracelet', '2019-02-03 08:52:01', '2019-02-03 08:52:01'),
(61, 1, 4, 'Chinese Jade Reiki Charged Bead Bracelet', 'chinese-jade-reiki-charged-bead-bracelet', '<p>Chinese Jade bracelet has been charged with Reiki healing energy. &nbsp;8 mm beads</p>', '11.11', NULL, NULL, '5.00', NULL, '5802798614.jpg', 0, 'Chinese Jade Reiki Charged Bead Bracelet', 'jade, bead, bracelet', 'Chinese Jade Reiki Charged Bead Bracelet', '2019-02-03 08:54:36', '2019-02-03 08:54:36'),
(62, 1, 4, 'Lapis Lazuli Reiki Charged Bead Bracelet', 'lapis-lazuli-reiki-charged-bead-bracelet', '<p>Lapis Lazuli 8 mm bead bracelet has been charged with Reiki healing energy.</p>', '11.11', NULL, NULL, '5.00', NULL, '8131398613.jpg', 0, 'Lapis Lazuli Reiki Charged Bead Bracelet', 'lapis, reiki, bead, bracelet', 'Lapis bracelet has been charged with Reiki healing energy.', '2019-02-03 08:57:04', '2019-02-03 08:57:04'),
(63, 1, 4, 'Tiger Eye Reiki Charged Bead Bracelet', 'tiger-eye-reiki-charged-bead-bracelet', '<p>Tiger Eye Reiki Charged Bead Bracelet&nbsp;&nbsp; 8 mm beads</p>', '11.11', NULL, NULL, '5.00', NULL, '6485598665.jpg', 0, 'Tiger Eye Reiki Charged Bead Bracelet', 'Tiger, Reiki, bracelet', 'Reiki charged tiger eye bracelet', '2019-02-03 09:02:53', '2019-02-03 09:02:53'),
(64, 1, 4, 'African Turquoise Reiki Charged Bead Bracelet', 'african-turquoise-reiki-charged-bead-bracelet', '<p>African Turquoise bracelet has been charged with Reiki healing energy.&nbsp; &nbsp;8 mm beads</p>', '11.11', NULL, NULL, '5.00', NULL, '9322198618.jpg', 0, 'African Turquoise Reiki Charged Bead Bracelet', 'Turquoise, Reiki, Bead, bracelet,', 'African Turquoise Reiki Charged Bead Bracelet', '2019-02-03 09:05:34', '2019-02-03 09:05:34'),
(65, 1, 4, 'Quartz Crystal Reiki Charged Bead Bracelet', 'quartz-crystal-reiki-charged-bead-bracelet', '<p>Clear quartz crystal bracelet has been charged with Reiki healing energy. &nbsp; 8 mm beads</p>', '11.11', NULL, NULL, '5.00', NULL, '5154298501.jpg', 0, 'Clear Quartz Crystal Reiki Charged Bead Bracelet', 'Quartz, Reiki, Bracelet', 'Clear quartz crystal Reiki Charged Bead Bracelet', '2019-02-03 09:08:13', '2019-02-03 09:08:13'),
(66, 1, 4, 'Rhodonite Reiki Charged Bead Bracelet', 'rhodonite-reiki-charged-bead-bracelet', '<p>Rhodonite Reiki Charged Bead Bracelet &nbsp;8 mm</p>', '11.11', NULL, NULL, '5.00', NULL, '4721698567.jpg', 0, 'Rhodonite Reiki Charged Bead Bracelet', 'Rhodonite, reiki, bead, bracelet', 'Green Aventurine Reiki Charged Bead Bracelet', '2019-02-03 09:11:58', '2019-02-03 09:11:58'),
(67, 1, 4, 'Mookaite Reiki Charged Bead Bracelet', 'mookaite-reiki-charged-bead-bracelet', '<p>Mookaite bracelet has been charged wtih Reiki healing energy. &nbsp; 8 mm beads</p>', '11.11', NULL, NULL, '5.00', NULL, '5571298612.jpg', 0, 'Mookaite Reiki Charged Bead Bracelet', 'Mookaite, reiki, bead, bracelet', 'Mookaite Reiki Charged Bead Bracelet', '2019-02-03 09:15:25', '2019-02-03 09:15:25'),
(68, 1, 4, 'Citrine Reiki Charged Bead Bracelet', 'citrine-reiki-charged-bead-bracelet', '<p>Citrine bead bracelet has been charged with Reiki healing energy. &nbsp;8 mm beads &nbsp; Stretch to fit most wrists.</p>', '11.11', NULL, NULL, '5.00', NULL, '5651198554.jpg', 0, 'Citrine Reiki Charged Bead Bracelet', 'citrine, reiki, bead, bracelet', 'Citrine Reiki Charged Bead Bracelet', '2019-02-03 09:18:10', '2019-02-03 09:18:10'),
(69, 1, 4, 'Black Labradorite Reiki Charged Bead Bracelet', 'black-labradorite-reiki-charged-bead-bracelet', '<p>Black labradorite 8 mm bead bracelet has been charged with Reiki healing energy. &nbsp;</p>\r\n\r\n<p>As a stone of transformation black labradorite can help to realize one&#39;s destiny in life. It allows one to perceive things beyond the physical plane. By strengthening intuition and psychic abilities, it stimulates new ideas and imagination.</p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '5.00', NULL, '8858698503.jpg', 0, 'Black Labradorite Reiki Charged Bead Bracelet', 'labradorite, reiki, bead, bracelet', 'Black labradorite 8 mm bead bracelet has been charged with Reiki healing energy.', '2019-02-03 09:22:20', '2019-02-03 09:22:20'),
(70, 1, 4, 'Shungite Reiki Charged Bead Bracelet', 'shungite-reiki-charged-bead-bracelet', '<p>8 mm shungite bead bracelet has been charged with Reiki healing energy. &nbsp; Stretch bracelet fits most wrists.</p>\r\n\r\n<p>Shungite has a strong mystical energy. It will help anyone involved with magical and mystical practices. It&#39;s deep primordial energy embodies energies of ancient spirits, which come into play in a protective role during magical work. Shugnite a great protector, a guardian and a body guard. It infuses the auric field with light, which shields the wearer permitting only positive and beneficial rays to come through. &nbsp; Shungite is also a powerful protection from harmful EMF.</p>\r\n\r\n<p>&nbsp;</p>', '19.99', NULL, NULL, '5.00', NULL, '6239698545.jpg', 0, 'Shungite Reiki Charged Bead Bracelet', 'shungite, bead, bracelet, reiki', 'Shungite Reiki Charged 8 mm Bead Bracelet', '2019-02-03 09:26:58', '2019-02-03 09:26:58'),
(71, 1, 4, 'Lava Stone Reiki Charged Bracelet', 'lava-stone-reiki-charged-bracelet', '<p>Lava bead bracelet has been charged with Reiki healing energy by one of our own Reiki Masters.&nbsp;</p>\r\n\r\n<p>8 mm beads. &nbsp; Bracelet stretches to fit most wrists. &nbsp;</p>\r\n\r\n<p>Lava stone can be used for aromatherapy. &nbsp; Put a drop of your favorite essential oil on one of the beads and it will hold the scent of the oil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '5.00', NULL, '4695298515.jpg', 0, 'Lava Stone Reiki Charged Bracelet', 'lava, reiki, bracelet, aromatherapy', 'Lava bead bracelet has been charged with Reiki healing energy by one of our own Reiki Masters. \r\n\r\n8 mm beads.   Bracelet stretches to fit most wrists.  \r\n\r\nLava Stone bracelet has been charged with Reiki Healing Energy.  Lava stone can be used for aromatherapy.   Put a drop of your favorite essential oil on one of the beads and it will hold the scent of the oil.', '2019-02-03 19:19:12', '2019-02-03 19:19:12'),
(72, 1, 4, '7 Chakra Bracelet with Lava Stone', '7-chakra-bracelet-with-lava-stone', '<p>Bracelet has gemstones representing the 7 chakras and lava stone for aromatherapy. &nbsp;It has been charged with Reiki by one of our own Reiki masters. &nbsp;</p>\r\n\r\n<p>8 mm beads. &nbsp;Stretches to fit most wrists.</p>', '11.11', NULL, NULL, '5.00', 1, '3468398598.jpg', 0, '7 Chakra Reiki Charged Bracelet with Lava Stone', 'Chakra, Reiki, Lava, Aromatherapy', 'Bracelet has gemstones representing the 7 chakras and lava stone for aromatherapy.   Reiki charged.', '2019-02-03 19:27:27', '2019-02-03 19:27:27'),
(73, 1, 10, 'Flower of Life Design Lava Stone and Angel Caller Necklace', 'flower-of-life-design-lava-stone-and-angel-caller-necklace', '<p>Lava Stone and Angel Caller Necklace. &nbsp; &nbsp;Choose to wear the lava stone with a drop of essential oil for aromatherapy or the small bell which is known an an Angel Caller.</p>\r\n\r\n<p>A legend recalls how the soft tinkling sound of the ball, which is unique to each pendant, has the magical ability to summon the guardian angel of its wearer, protecting him or her and accompanying the wearer throughout their life.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '24.95', NULL, NULL, '5.00', NULL, '7620099098.jpg', 0, 'Flower of Life Design Lava Stone and Angel Caller Necklace', 'flower of life, lava, aromatherapy, angel caller', 'Lava Stone and Angel Caller Necklace.    Choose to wear the lava stone with a drop of essential oil for aromatherapy or the small bell which is known an an Angel Caller.', '2019-02-03 19:55:32', '2019-02-03 19:55:32'),
(74, 1, 10, 'Om Design Lava Stone and Angel Caller Necklace', 'om-design-lava-stone-and-angel-caller-necklace', '<p>Om Design&nbsp;Lava Stone and Angel Caller Necklace. &nbsp; &nbsp;Choose to wear the lava stone with a drop of essential oil for aromatherapy or the small bell which is known an an Angel Caller. &nbsp;</p>\r\n\r\n<p>A legend recalls how the soft tinkling sound of the bell has the magical ability to summon the guardian angel of its wearer, protecting him or her and accompanying the wearer throughout their life.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '24.95', NULL, NULL, '5.00', NULL, '7771199112.jpg', 0, 'Lava Stone and Angel Caller Necklace.', 'lava, necklace, angel caller, om, aromatherapy', 'Om Design Lava Stone and Angel Caller Necklace.    Choose to wear the lava stone with a drop of essential oil for aromatherapy or the small bell which is known an an Angel Caller.', '2019-02-03 20:02:16', '2019-02-03 20:02:16'),
(75, 1, 10, 'Heart Design Lava Stone Necklace with Angel Caller', 'heart-design-lava-stone-necklace-with-angel-caller', '<p>Heart Design Lava Stone and Angel Caller necklace. &nbsp; You can choose to wear the lava stone with a drop of essential oil for aromatherapy or wear the angel caller instead. &nbsp;</p>\r\n\r\n<p>Legend recalls how the soft, tinkling sound of the ball has the magical ability to summon the guardian angel of its wearer, protecting him or her and accompanying the wearer throught their life.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '24.95', NULL, NULL, '5.00', NULL, '6467199092.jpg', 0, 'Heart Lava Stone and Angel Caller Necklace', 'heart, lava, angel caller, necklace, aromatherapy', 'Heart Design Lava Stone and Angel Caller necklace.   You can choose to wear the lava stone with a drop of essential oil for aromatherapy or wear the angel caller instead.  \r\n\r\nLegend recalls how the soft, tinkling sound of the ball has the magical ability to summon the guardian angel of its wearer, protecting him or her and accompanying the wearer throught their life.', '2019-02-03 20:07:57', '2019-02-03 20:07:57'),
(76, 1, 10, 'Angel Wing Heart Design Lava Stone and Angel Caller necklace.', 'angel-wing-heart-design-lava-stone-and-angel-caller-necklace', '<p>Angel Wing Heart Design Lava Stone and Angel Caller necklace. &nbsp; You can choose to wear the lava stone with a drop of essential oil for aromatherapy or wear the angel caller instead. &nbsp;</p>\r\n\r\n<p>Legend recalls how the soft, tinkling sound of the ball has the magical ability to summon the guardian angel of its wearer, protecting him or her and accompanying the wearer throught their life.</p>', '24.95', NULL, NULL, '5.00', NULL, '6581099188.jpg', 0, 'Angel Wing Design Lava Stone and Angel Caller necklace.', 'angel wing, lava, angel caller, necklace, aromatherapy', 'Angel Wing  Design Lava Stone and Angel Caller necklace.   You can choose to wear the lava stone with a drop of essential oil for aromatherapy or wear the angel caller instead.  \r\n\r\nLegend recalls how the soft, tinkling sound of the ball has the magical ability to summon the guardian angel of its wearer, protecting him or her and accompanying the wearer throught their life.', '2019-02-03 20:13:14', '2019-02-03 20:13:14'),
(77, 1, 9, 'Carved Wooden Pentacle Necklace', 'carved-wooden-pentacle-necklace', '<p><span style=\"color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px\">Wooden Pentacle Necklace is a beautifully carved pendant on a multi-strand cord. It has been stained in an elegant mahogany making this a striking piece for both men and women. &nbsp;2&quot;</span></p>', '9.99', NULL, NULL, '5.00', NULL, '3612998903.jpg', 0, 'Carved Wooden Pentacle Necklace', 'wood, pentacle, pagan, wiccan', 'Wooden Pentacle Necklace is a beautifully carved pendant on a multi-strand cord. It has been stained in an elegant mahogany making this a striking piece desirable to both men and women.', '2019-02-03 20:19:31', '2019-02-03 20:19:31'),
(78, 1, 9, 'Triquetra Wood Carved Unisex Necklace', 'triquetra-wood-carved-unisex-necklace', '<p><span style=\"color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px\">Unisex Triquetra necklace&nbsp;has been beautifully carved from wood and hung on a multi-strand cord. &nbsp;2&quot; &nbsp;</span></p>\r\n\r\n<p><span style=\"color:#B22222\">Sold out!&nbsp;&nbsp;</span></p>', '0.00', NULL, NULL, '0.00', NULL, '7110495009.jpg', 0, 'Triquetra Wooden Necklace', 'triquetra, wood, unisex, pagan, wiccan', 'Unisex Triquetra necklace has been beautifully carved from wood and hung on a multi-strand cord.  2\"', '2019-02-03 20:26:08', '2019-02-03 20:26:08'),
(79, 1, 5, 'Carved Wooden Om Necklace', 'carved-wooden-om-necklace', '<p>Unisex Carved Wooden Om on multi strand cord &nbsp;</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>', '9.99', NULL, NULL, '5.00', 0, '4772198900.jpg', 0, 'Unisex Carved Wooden Om Necklace', 'unisex, wood, om, sacred, symbol,', 'Unisex Carved Wooden Om Necklace on multi-strand black cord  \r\nPIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-02-03 20:29:27', '2019-04-01 00:57:42'),
(80, 1, 9, 'Sterling Silver Crescent Moon Pentagram', 'sterling-silver-crescent-moon-pentagram', '<p>Subtle sterling silver pentagram nestled on a crescent moon.</p>\r\n\r\n<p>1&quot; high &nbsp;</p>\r\n\r\n<p>18&quot; &nbsp;chain included</p>', '24.99', NULL, NULL, '5.00', 1, '95653silvercrescentmoon pentagram.jpg', 0, 'Sterling Silver Crescent Moon Pentagram', 'Pentagram, pentacle, sterling silver', 'Sterling Silver Crescent Moon Pentagram includes 18\" chain', '2019-02-03 20:37:40', '2019-02-03 20:37:40'),
(81, 1, 9, 'Sterling Silver Pentacle', 'sterling-silver-pentacle', '<p>Sterling Silver Pentacle includes silver chain. &nbsp;</p>\r\n\r\n<p>Approximately 1&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '29.99', NULL, NULL, '5.00', NULL, '30209pentaclenirvana.jpg', 0, 'Sterling Silver Pentacle', 'Sterling Silver, pentacle, wicca, pagan', 'Sterling Silver Pentacle on silver chain', '2019-02-03 20:50:42', '2019-02-03 20:50:42'),
(82, 3, 15, 'Plain Wooden Boat Incense Burner', 'plain-wooden-boat-incense-burner', '<p>Plain Wooden Boat incense burner</p>', '1.99', NULL, NULL, '5.00', NULL, '2960089102.jpg', 0, 'Plain Wooden Boat incense burner', 'wood, incense', 'Plain Wooden Boat incense burner', '2019-02-03 20:55:14', '2019-02-03 20:55:14'),
(83, 1, 13, 'Sterling Silver Rose Quartz Celtic Knot Pendant', 'sterling-silver-rose-quartz-celtic-knot-pendant', '<p>Sterling Silver Rose Quartz Celtic Knot Pendant includes 18&quot; chain &nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">Rose quartz is the stone of unconditional love. &nbsp;Its&nbsp;soothing color calms feelings of anger or resentment, and can aid efforts to meditate and reflect. Pink is the color of new love, new romance and new relationships.</span></p>\r\n\r\n<p>&nbsp;</p>', '39.99', NULL, NULL, '5.00', NULL, '91983IMG_4377.JPG', 0, 'Sterling Silver Rose Quartz Celtic Knot Pendant', 'rose quartz, pendant, sterling silver', 'Sterling Silver Rose Quartz Celtic Knot Pendant', '2019-02-04 02:53:12', '2019-02-04 02:53:12');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `price`, `discount`, `discount_price`, `shipping_price`, `best_seller`, `image`, `prd_cs_opt`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(84, 1, 13, 'Raw Rose Quartz Sterling Silver Stud Earrings', 'raw-rose-quartz-sterling-silver-stud-earrings', '<p>Raw rose quartz sterling silver stud earrings. &nbsp; &nbsp;</p>\r\n\r\n<p>Rose Quartz is the stone of unconditional love. &nbsp;<span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">Its soothing color calms feelings of anger or resentment, and can aid efforts to meditate and reflect. Pink is the color of new love, new romance and new relationships.</span></p>\r\n\r\n<p>&nbsp;</p>', '19.99', NULL, NULL, '5.00', NULL, '62477IMG_4370.JPG', 0, 'Rose Quartz Sterling Siver Stud Earrings', 'stud earring, rose quartz, love', 'Raw Rose Quartz Sterling Silver Stud Earrings.', '2019-02-04 02:56:57', '2019-02-04 02:56:57'),
(85, 1, 13, 'Large Amethyst Cab Sterling Silver Pendant', 'large-amethyst-cab-sterling-silver-pendant', '<p>Nicely sized amethyst cabochon&#39;s purple color simply&nbsp;glows! &nbsp; 18&quot; silver chain included</p>\r\n\r\n<p>Amethyst is a meditative and calmning stone which works in the emotional, spiritual and physical planes to promote calm, balance and peace. &nbsp;It is also used to eliminate impatience. &nbsp;Its name comes from the ancient Greek word meaning &quot;not drunk&quot; and amethyst is said to assist those struggling with sobriety. &nbsp; Its color is said to have come from the Greek god Dionysus pouring out his wine in mourning.</p>\r\n\r\n<p>&nbsp;</p>', '39.99', NULL, NULL, '5.00', NULL, '43314IMG_4380.JPG', 0, 'Amethyst Cab Pendant', 'amethyst, sterling amethyst, amethyst pendant, amethyst necklace', 'Amethyst cabochon sterling silver pendant with 18\' silver chain.', '2019-02-04 03:07:43', '2019-02-04 03:07:43'),
(86, 1, 13, 'Sterling Silver Amethyst Butterfly Pendant', 'sterling-silver-amethyst-butterfly-pendant', '<p>Sterling Silver Amethyst Butterfly Pendant includes 18&quot; silver chain. &nbsp;Amethyst is a meditative and calming stone which works in the emotional, spiritual and physical planes to promote calm, balance and peace. &nbsp;Amethyst is also used to eliminate impatience. &nbsp; It&#39;s name comes from the ancient Greek word meaning &quot;not drunk&quot; and is used to promote sobriety.</p>\r\n\r\n<p>To Native Americans, the butterfly is a symbol of change, transformation and joy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '49.99', NULL, NULL, '5.00', NULL, '45468IMG_4383.JPG', 0, 'Sterling Silver Amethyst Butterfly Pendant', 'butterfly, amethyst, sterling', 'Sterling Silver Amethyst Butterfly pendant', '2019-02-04 03:15:15', '2019-02-04 03:15:15'),
(87, 1, 13, 'Petite Sterling Silver Celtic Knot with Amethyst Pendant', 'petite-sterling-silver-celtic-knot-with-amethyst-pendant', '<p>Petite Amethyst Sterling Silver Celtic Knot pendant includes 18&quot; silver chain.&nbsp;</p>\r\n\r\n<p>Amethyst is a meditative and calming stone which works in the emotional, spiritual and physical planes to promote calm, balance and peace. &nbsp;Amethyst is also used to eliminate impatience. &nbsp; It&#39;s name comes from the ancient Greek word meaning &quot;not drunk&quot; and is used to promote sobriety.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '24.99', NULL, NULL, '5.00', NULL, '26476IMG_4386.JPG', 0, 'Small Sterling Silver Celtic Knot and Amethyst Pendant', 'Celtic knot, sterling silver, amethyst, pendant', 'Small Sterling Silver Celtic Knot and Amethyst Pendant', '2019-02-04 03:19:21', '2019-02-04 03:19:21'),
(88, 1, 13, 'Oval Amethyst Cabochon Sterling Silver Stud Earrings', 'oval-amethyst-cabochon-sterling-silver-stud-earrings', '<p>3x5 oval amethyst cabochon sterling silver stud earrings. &nbsp;</p>\r\n\r\n<p>Amethyst is a meditative and calming stone which works in the emotional, spiritual and physical planes to promote calm, balance and peace. &nbsp;Amethyst is also used to eliminate impatience. &nbsp; It&#39;s name comes from the ancient Greek word meaning &quot;not drunk&quot; and is used to promote sobriety.</p>\r\n\r\n<p>&nbsp;</p>', '17.99', NULL, NULL, '5.00', NULL, '17001IMG_0614.JPG', 0, 'Amethyst Sterling Stud Earrings', 'stud earring, amethyst, sterling silver', 'Amethyst cabochon 3x5 set in sterling silver stud earrings.', '2019-02-04 03:23:44', '2019-02-04 03:23:44'),
(89, 1, 13, 'Amethyst Druzy Sterling Silver Pendant', 'amethyst-druzy-sterling-silver-pendant', '<p>Deep purple amethyst druzy set in sterling silver. &nbsp; Silver chain included.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Amethyst is a meditative and calming stone which works in the emotional, spiritual and physical planes to promote calm, balance and peace. &nbsp;Amethyst is also used to eliminate impatience. &nbsp; It&#39;s name comes from the ancient Greek word meaning &quot;not drunk&quot; and is used to promote sobriety.</p>', '44.00', NULL, NULL, '5.00', NULL, '47528fullsizeoutput_cb8.jpeg', 0, 'Amethyst Druzy Pendant', 'amethyst, druzy, sterling,', 'Deep purple amethyst druzy set in sterling silver pendant.   Includes silver chain', '2019-02-04 03:33:02', '2019-02-04 03:33:02'),
(90, 6, 27, 'Fluorite Buddha in Blessing Mudra', 'fluorite-buddha-in-blessing-mudra', '<p>Stunning Fluorite Buddha gives you&nbsp;his blessing. &nbsp; The striations of the fluorite&#39;scolor from dark green to bright purple are just gorgeous and the craftmanship is excellent.&nbsp; &nbsp;This is a very special piece of art! &nbsp; Stands approximately 8&quot; high.</p>\r\n\r\n<p>&nbsp;</p>', '1790.00', NULL, NULL, '0.00', NULL, '93607IMG_0707.JPG', 0, 'Carved Fluorite Buddha Statue', 'Buddha, carved statue, gemstone statue', 'Stunning Fluorite Buddha gives you his blessing.   The striations of the fluorite\'scolor from dark green to bright purple are just gorgeous and the craftmanship is excellent.   This is a very special piece of art!   Stands approximately 8\" high.', '2019-02-04 03:46:28', '2019-02-04 03:46:28'),
(91, 1, 13, 'Triquetra Sterling Silver with Amethyst pendant', 'triquetra-sterling-silver-with-amethyst-pendant', '<p>Sterling Silver Triquetra Pendant with 5 mm amethyst. &nbsp; Silver chain included. &nbsp; Also available in moonstone, labradorite and malachite.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '31.99', NULL, NULL, '5.00', NULL, '88710IMG_4385.JPG', 0, 'Triquetra Sterling Silver with Amethyst pendant', 'triquetra, amethyst, labradorite, moonstone', 'Triquetra Sterling Silver with Amethyst pendant', '2019-02-04 07:33:31', '2019-02-04 07:33:31'),
(92, 5, 18, 'Root Chakra Tibetan Bell', 'root-chakra-tibetan-bell', '<p>Red Root Chakra Bell with Sanscrit Symbol Muladhara.</p>\r\n\r\n<p>Muladhara is the&nbsp;<a href=\"http://www.yogiapproved.com/om/the-base-chakra-how-it-impacts-your-quality-of-life/\" style=\"text-decoration: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(240, 10, 113);\">Root Chakra</a>&nbsp;at the base of your spine, and it&rsquo;s all about grounding. The square in this symbol represents rigidity, stability, and has a foundational energy. It provides a stable structure for the chakra system to rest on.&nbsp;</p>\r\n\r\n<p>The upside-down triangle is the alchemical symbol for earth, which also reminds us of the grounded energy of Muladhara. The four petals in this symbol represent the four mind-states that originate in this chakra: mind, intellect, consciousness, and ego.<br />\r\n&nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '37466rootchakrabell.jpg', 0, 'Root Chakra Tibetan Bell', 'root, chakra, bell, Tibetan', 'Red Tibetan bell with root chakra symbol.', '2019-02-05 03:06:56', '2019-02-05 03:06:56'),
(93, 5, 18, 'Orange Sacral Chakra Tibetan Bell', 'orange-sacral-chakra-tibetan-bell', '<p>Red Sacral Chakra Tibetan bell with Svadhishthana symbol. Svadhishthana is your sacral chakra, your center of creativity. &nbsp; The circles in connection with the lotus flower petals represent the cyclical nature of birth, death, and rebirth. &nbsp; The tangential circles also create a crescent moon shape which is a nice reminder of the connection between creativity and the phases of the moon.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '90442sacralchakrabell-91041o.jpg', 0, 'Sacral Chakra Tibetan Bell', 'orange, sacral chakra, tibetan, bell', 'Orange sacral chakra tibetan bell with symbol.', '2019-02-05 03:26:35', '2019-02-05 03:26:35'),
(94, 5, 18, 'Solar Plexus Chakra Tibetan Bell', 'solar-plexus-chakra-tibetan-bell', '<p>Yellow Solar Plexus Chakra Tibetan Bell with Manipura symbol. &nbsp;</p>\r\n\r\n<p>Manipura, the solar plexus chakra, directly affects your confidence and personal power. &nbsp;The ten petals of this symbol connect it to the ten Pranas in your body (types of air energy manipulation) &nbsp;The upside down triangle in this symbol represents the energy of the lower three chakras being concentrated and energetically spreading up to the higher chakras. &nbsp; It could be thought of as an upside down funnel of earth energy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '61649solarplexusbell-91041-y.jpg', 0, 'Yellow Solar Plexus Chakra Tibetan Bell', 'yellow, solar plexus, chakra, tibetan, bell', 'Yellow Solar Plexus Chakra Tibetan Bell with Manipura symbol.', '2019-02-05 03:53:02', '2019-02-05 03:53:02'),
(95, 5, 18, 'Green Heart Chakra Tibetan Bell', 'green-heart-chakra-tibetan-bell', '<p>Green Heart Chakra Tibetan Bell with Anahata Symbol. &nbsp;</p>\r\n\r\n<p>Anahata is your Heart Chakra and fuels your compassion toward yourself and others. &nbsp;It also is the connection between your three base chakras and your three higher chakras. &nbsp;This is represented by the two triangles in the center of the symbol--the upward and downward, male and female energies mingling to create the six pointed star shape.</p>\r\n\r\n<p>&nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '43644heartbell-91041-g.jpg', 0, 'Green Heart Chakra Tibetan Bell', 'green, heart, chakra, tibetan, bell', 'Green heart chakra Tibetan bell with Anahata symbol.', '2019-02-05 03:57:26', '2019-02-05 03:57:26'),
(96, 5, 18, 'Turquoise Throat Chakra Tibetan Bell', 'turquoise-throat-chakra-tibetan-bell', '<p>Green Heart Chakra Tibetan Bell with Vishuddha symbol. &nbsp;</p>\r\n\r\n<p>Vishuddha is your throat chakra and houses your ability to communicate and speak up for what you believe. &nbsp;Similar to Minipura, the triangle in this symbol represents energy moving upward. &nbsp;This energy is the gathering of knowledge toward enlightenment. &nbsp;The 16 petals of this symbal are often associated with 16 vowels of the Sanskrit language. &nbsp; The pronunciation of the vowls is light and breathy so the petals represent the airy quality of communication.</p>\r\n\r\n<p>&nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '68185throatchakrabell-91041s.jpg', 0, 'Turquoise Throat Chakra Tibetan Bell', 'turquoise, throat, chakra, tibetan, bell', 'Green Heart Chakra Tibetan Bell with Vishuddha symbol.', '2019-02-05 04:03:35', '2019-02-05 04:03:35'),
(97, 5, 18, 'Third Eye Chakra Tibetan Bell', 'third-eye-chakra-tibetan-bell', '<p>Blue Third Eye Tibetan Bell with Ajna symbol.</p>\r\n\r\n<p>Ajna is your third eye chakra, the seat of your intuition. &nbsp;This is the last chakra before your crown chakra. &nbsp; The upside down triangle represents the knowledge and lessons of the lower six chakras that have been gathered and expanded into your divine consciousness. &nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '89791thirdeyechakrabell.jpg', 0, 'Blue Third Eye Chakra Tibetan Bell', 'Blue, third eye, chakra, tibetan, bell', 'Blue Third Eye Chakra Tibetan Bell with Ajna Symbol', '2019-02-05 04:09:50', '2019-02-05 04:09:50'),
(98, 5, 18, 'Violet Crown Chakra Tibetan Bell', 'violet-crown-chakra-tibetan-bell', '<p>Violet Crown Chakra Tibetan Bell with Sahasrara&nbsp;Symbol &nbsp;</p>\r\n\r\n<p>Sahasrara is your crown chakra, or your divine connection. &nbsp; This symbol is simply the divine circle adn lotus flower which is a reminder of our connection to creation. &nbsp;It represents our divine unity with other beings and with the universe. &nbsp;The lotus flower represents prosperity and eternity among many other things.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '42.99', NULL, NULL, '5.00', NULL, '42301thirdeyechakrabell.jpg', 0, 'Violet Crown Chakra Tibetan Bell', 'violet, crown chakra, tibetan, bell', 'Violet Crown Chakra Tibetan Bell with Sahasrara Symbol', '2019-02-05 04:20:54', '2019-02-05 04:20:54'),
(99, 5, 18, 'Brass Buddha with Beads and Bells', 'brass-buddha-with-beads-and-bells', '<p>Brass Buddha with beads and three bells</p>', '11.99', NULL, NULL, '5.00', NULL, '39229buddhabell.jpg', 0, 'Brass Buddha with beads and three bells', 'buddha, chime, bell', 'Brass Buddha with beads and three bells', '2019-02-05 04:28:30', '2019-02-05 04:28:30'),
(100, 5, 18, 'Brass Ganesh with bells and Beads', 'brass-ganesh-with-bells-and-beads', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial; font-size:12px\">This small wind chime is a wonderful piece for your sacred space, doorways, and windows, prominently displaying an image of the Hindu god Ganesh, the lord of new beginnings, success and destroying obstacles.</span></p>', '11.99', NULL, NULL, '5.00', 0, '94719ganeshabell.jpg', 0, 'Brass Ganesh with Beads and Bells', 'ganesh, wind chime, bells', 'This small wind chime is a wonderful piece for your sacred space, doorways, and windows, prominently displaying an image of the Hindu god Ganesh, the lord of new beginnings.', '2019-02-05 04:32:05', '2019-03-16 23:25:00'),
(101, 4, 22, 'Love Blessing Bowl', 'love-blessing-bowl', '<p>This heart shaped blessing bowl comes beautifully packaged in a black box and nestled in a bed of burgundy crinkle. &nbsp;Inside the bowl, the card proclaims &quot;You Are Loved.&quot; &nbsp; Included are six pieces of parchment along with six ribbons to tie your own hand written blessings into scrolls. &nbsp; This is sure to make a gift that will be treasured for many years to come!</p>', '39.99', NULL, NULL, '9.00', NULL, '33101Black Box with Heart.jpg', 0, 'Heart Blessing Bowl', 'heart, blessing bowl', 'This heart shaped blessing bowl comes beautifully packaged in a black box and nestled in a bed of burgundy crinkle.  Inside the bowl, the card proclaims \"You Are Loved.\"', '2019-02-05 04:38:56', '2019-02-05 04:38:56'),
(102, 4, 22, 'Star Blessing Bowl', 'star-blessing-bowl', '<p>Show your appreciation with this star shaped bowl has a card in it that says &quot;You&#39;re a star!&quot; &nbsp; Comes beautifully packaged in a silver box with silver ribbon and nestled in navy blue crinkle. &nbsp; Includes 6 pieces of parchment paper and ribbons to write your own blessings and roll up into scrolls. &nbsp;This will make a gift that is remembered for years to come!</p>', '39.99', NULL, NULL, '5.00', NULL, '64399Silver Box with Star Bowl.jpg', 0, 'Star Blessing Bowl', 'Star, Blessing bowl', 'Show your appreciation with this star shaped bowl has a card in it that says \"You\'re a star!\"   Comes beautifully packaged in a silver box with silver ribbon and nestled in navy blue crinkle.   Includes 6 pieces of parchment paper and ribbons to write your own blessings and roll up into scrolls.  This will make a gift that is remembered for years to come!', '2019-02-05 06:07:31', '2019-02-05 06:07:31'),
(103, 4, 22, 'Celebrate Blessing Bowl', 'celebrate-blessing-bowl', '<p>Celebrate an occasion&nbsp;with this oval&nbsp;shaped bowl that has a card in it that says &quot;In Celebration of You&quot; &nbsp; Comes beautifully packaged in a robin&#39;s egg blue box with silver ribbon and nestled in robin&#39;s egg&nbsp;blue crinkle. &nbsp; Includes 6 pieces of parchment paper and ribbons to write your own blessings and roll up into scrolls. &nbsp;This will make a gift that is remembered for years to come!</p>', '39.99', NULL, NULL, '5.00', NULL, '55046Blue Box with Oval Bowl.jpg', 0, 'Celebrate Blessing Bowl', 'blessing, bowl, oval, celebrate, celebration', 'Celebrate an occasion with this oval shaped bowl that has a card in it that says \"In Celebration of You\"   Comes beautifully packaged in a robin\'s egg blue box with silver ribbon and nestled in robin\'s egg blue crinkle.   Includes 6 pieces of parchment paper and ribbons to write your own blessings and roll up into scrolls.  This will make a gift that is remembered for years to come!', '2019-02-05 06:11:23', '2019-02-05 06:11:23'),
(104, 6, 30, 'Orgonite Pendant with Flower of Life symbol', 'orgonite-pendant-with-flower-of-life-symbol', '<p>Orgonite has seven chakra stones and is embossed with a gold flower of life symbol.</p>\r\n\r\n<p style=\"text-align:justify\">Orgonite is a substance made of resin, metals and quartz that&nbsp;balances and harmonises bio-energy, otherwise known as orgone, chi or prana.</p>\r\n\r\n<p style=\"text-align:justify\">The effects of orgonite differ from person to person. Some feel the energy straight away (usually as a tingling or warm sensation) while for others the effects are cumulative. The most commonly reported effects of orgonite are:</p>\r\n\r\n<p style=\"text-align:justify\">&bull; Better sleep and vivid dreams<br />\r\n&bull; More energy<br />\r\n&bull; Balanced moods<br />\r\n&bull; Decreased sensitivity to EMFs<br />\r\n&bull; Spiritual and psychological growth<br />\r\n&bull; Increased resistance to illness (orgonite should never be used as a substitute for professional medical care)</p>\r\n\r\n<h4 style=\"text-align:justify\">What are some uses for orgonite?</h4>\r\n\r\n<p style=\"text-align:justify\">Most people use orgonite to balance and strengthen their energetic field, and to help provide protection against EMFs. You can also use it to:<br />\r\n&bull; Deepen meditation<br />\r\n&bull; Boost plant growth<br />\r\n&bull; Remove negative energy in a specific place<br />\r\n&bull; Strengthen intentions and visualisations</p>\r\n\r\n<p>&nbsp;</p>', '19.99', NULL, NULL, '5.00', NULL, '51660IMG_0497.JPG', 0, 'Orgonite pendant with Flower of Life', 'orgonite, flower of life, emf', 'Orgonite has seven chakra stones and is embossed with a gold flower of life symbol.', '2019-02-07 03:25:30', '2019-02-07 03:25:30'),
(105, 6, 30, 'Orgonite Pocket stones to carry your EMF protection in your pocket!', 'orgonite-pocket-stones-to-carry-your-emf-protection-in-your-pocket', '<p style=\"text-align:justify\">Orgonite Pocket stones to carry your EMF protection in your pocket! &nbsp; Colors vary and are chosen at random.</p>\r\n\r\n<p style=\"text-align:justify\">Orgonite is a substance made of resin, metals and quartz that&nbsp;balances and harmonises bio-energy, otherwise known as orgone, chi or prana.</p>\r\n\r\n<p style=\"text-align:justify\">The effects of orgonite differ from person to person. Some feel the energy straight away (usually as a tingling or warm sensation) while for others the effects are cumulative. The most commonly reported effects of orgonite are:</p>\r\n\r\n<p style=\"text-align:justify\">&bull; Better sleep and vivid dreams<br />\r\n&bull; More energy<br />\r\n&bull; Balanced moods<br />\r\n&bull; Decreased sensitivity to EMFs<br />\r\n&bull; Spiritual and psychological growth<br />\r\n&bull; Increased resistance to illness (orgonite should never be used as a substitute for professional medical care)</p>\r\n\r\n<h4 style=\"text-align:justify\">What are some uses for orgonite?</h4>\r\n\r\n<p style=\"text-align:justify\">Most people use orgonite to balance and strengthen their energetic field, and to help provide protection against EMFs. You can also use it to:<br />\r\n&bull; Deepen meditation<br />\r\n&bull; Boost plant growth<br />\r\n&bull; Remove negative energy in a specific place<br />\r\n&bull; Strengthen intentions and visualisations</p>', '7.00', NULL, NULL, '5.00', NULL, '51053Orgcab-067-Assorted-Stones-Orgonite-Oval.jpg', 0, 'Orgonite Pocket stones', 'orgonite, pocket, EMF', 'Orgonite Pocket stones to carry your EMF protection in your pocket!', '2019-02-07 03:39:09', '2019-02-07 03:39:09'),
(106, 6, 30, 'Orgonite Point', 'orgonite-point', '<p>Orgonite Point for energetic assistance at home. &nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Orgonite is a substance made of resin, metals and quartz that&nbsp;balances and harmonises bio-energy, otherwise known as orgone, chi or prana.</p>\r\n\r\n<p style=\"text-align:justify\">The effects of orgonite differ from person to person. Some feel the energy straight away (usually as a tingling or warm sensation) while for others the effects are cumulative. The most commonly reported effects of orgonite are:</p>\r\n\r\n<p style=\"text-align:justify\">&bull; Better sleep and vivid dreams<br />\r\n&bull; More energy<br />\r\n&bull; Balanced moods<br />\r\n&bull; Decreased sensitivity to EMFs<br />\r\n&bull; Spiritual and psychological growth<br />\r\n&bull; Increased resistance to illness (orgonite should never be used as a substitute for professional medical care)</p>\r\n\r\n<h4 style=\"text-align:justify\">What are some uses for orgonite?</h4>\r\n\r\n<p style=\"text-align:justify\">Most people use orgonite to balance and strengthen their energetic field, and to help provide protection against EMFs. You can also use it to:<br />\r\n&bull; Deepen meditation<br />\r\n&bull; Boost plant growth<br />\r\n&bull; Remove negative energy in a specific place<br />\r\n&bull; Strengthen intentions and visualisations</p>', '19.99', NULL, NULL, '5.00', 0, '11384Orgpoint-003-Chakra-Stone-Orgone-Tower.jpg', 0, 'Orgonite point', 'orgonite, point, EMF', 'Orgonite point for healing energy at home', '2019-02-07 03:52:14', '2019-02-07 04:01:05'),
(107, 6, 25, 'Happy Birthday Blue Agate', 'happy-birthday-blue-agate', '<p>Happy Birthday pocket stone in blue agate.</p>', '5.00', NULL, NULL, '3.00', NULL, '32960IMG_0731.JPG', 0, 'Happy Birthday pocket stone in blue agate.', 'word stone, happy birthday', 'Happy Birthday pocket stone in blue agate.', '2019-02-07 04:06:26', '2019-02-07 04:06:26'),
(108, 6, 25, 'Amethyst Gratitude Stone', 'amethyst-gratitude-stone', '<p>Amethyst pocket stone engraved wth &quot;Gratitude&quot;.</p>', '5.00', NULL, NULL, '3.00', NULL, '73464gratitude.jpg', 0, 'Amethyst pocket stone engraved wth \"Gratitude\".', 'amethyst, pocket stone, gratitude', 'Amethyst pocket stone engraved wth \"Gratitude\".', '2019-02-07 04:18:45', '2019-02-07 04:18:45'),
(109, 6, 31, 'Rose Quartz Crystal Tree', 'rose-quartz-crystal-tree', '<p>Rose quartz crystals make up this lovely tree that brings beauty and the loving vibe of rose quartz to any area.</p>', '32.00', NULL, NULL, '5.00', 1, '20881IMG_0719.JPG', 0, 'Rose Quartz Gemstone Chip Tree', 'rose quartz, gemstone tree,', 'Rose quartz crystals make up this lovely tree that brings beauty and the loving vibe of rose quartz to any area.', '2019-02-07 04:51:50', '2019-02-07 04:51:50'),
(110, 7, 33, 'Selenite Athame Large', 'selenite-athame-large', '<p>Beautifully polished selenite athame measures approximately 14 inches. &nbsp;</p>\r\n\r\n<p>The powerful vibration of selenite can clear, open and activate the higher chakras. &nbsp;It is excellent for all types of spiritual work. &nbsp; Removes energy blockages from physical and etheric bodies and can be used to cleanse negative energy from other gemstones.</p>\r\n\r\n<p>&nbsp;</p>', '45.00', NULL, NULL, '7.00', 0, '32310Selenite Knives Large.jpg', 0, 'Large Selenite Athame', 'selenite, athame, ritual knife', 'Beautifully polished selenite athame measures approximately 14 inches', '2019-02-07 05:13:07', '2019-03-09 00:41:25'),
(111, 7, 33, 'Small Selenite Athame', 'small-selenite-athame', '<p>Beautifully polished selenite athame measures approximately 8&nbsp;inches. &nbsp;The powerful vibration of selenite can clear, open and activate the higher chakras. &nbsp;It is excellent for all types of spiritual work. &nbsp; Removes energy blockages from physical and etheric bodies and can be used to cleanse negative energy from other gemstones.</p>', '30.00', NULL, NULL, '5.00', 0, '15824Selenite Knives Small.jpg', 0, 'Selenite Athame', 'selenite, athame, ritual knife', 'Beautifully polished selenite athame measures approximately 8 inches', '2019-02-07 05:16:48', '2019-03-09 00:42:18'),
(112, 7, 33, 'Pentacle Athame', 'pentacle-athame', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial; font-size:12px\">This athame makes for a wonderful tool for spells and ritual magic, with both the ritual blade and the pentagram aiding you to channel and direct energy. 9 1/2&rdquo; - 4 1/2&rdquo; blade.</span></p>', '39.99', NULL, NULL, '7.00', NULL, '96044pentagramathame.jpg', 0, 'Pentagram Athame', 'athame, ritual knife, pentagram', 'This athame makes for a wonderful tool for spells and ritual magic, with both the ritual blade and the pentagram aiding you to channel and direct energy. 9 1/2” - 4 1/2” blade.', '2019-02-07 05:22:48', '2019-02-07 05:22:48'),
(113, 7, 33, 'Goddess Athame', 'goddess-athame', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial; font-size:12px\">This athame displays a winged goddess on its pewter sheath, which perfectly accents the scrollwork and goddess that compose the athames ornate hilt. Cannot ship to MA or CA. 13&quot; - 8&quot; blade.</span></p>', '42.00', NULL, NULL, '7.00', NULL, '99890Goddess athame.jpg', 0, 'Goddess Athame', 'athame, ritual knife, goddess', 'This athame displays a winged goddess on its pewter sheath, which perfectly accents the scrollwork and goddess that compose the athames ornate hilt. Cannot ship to MA or CA. 13\" - 8\" blade.', '2019-02-07 05:26:55', '2019-02-07 05:26:55'),
(114, 7, 33, 'Triquetra Pentagram Athame', 'triquetra-pentagram-athame', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif\">Displaying a pentagram with the three points of a Celtic triquetra at its center. Cannot ship to MA or CA. 9&quot; - 5&quot; blade</span></p>', '39.99', NULL, NULL, '5.00', NULL, '90470triquetraathame.jpg', 0, 'Triquetra Athame', 'Athame, ritual knife, triquetra', 'Displaying a pentagram with the three points of a Celtic triquetra at its center. Cannot ship to MA or CA. 9\" - 5\" blade', '2019-02-07 05:32:41', '2019-02-07 05:32:41'),
(115, 7, 33, 'Twisted Wood Wand', 'twisted-wood-wand', '<p>These beautiful twisted wood wands are approximately 9&quot; long. &nbsp; They come with a faceted quartz point at one end and a quartz sphere at the other end. &nbsp; There are garnets set into the silver at either end of the wand. &nbsp; A silver wire is woven into the twists of the wand. &nbsp; These wands are made by hand and will have irregularities and marks in the silver work. &nbsp; Each wand comes with an attractive velvet pouch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '29.99', NULL, NULL, '5.00', NULL, '68576Wooden twisted wand New October 2018.jpg', 0, 'Twisted wood wand', 'wand', 'Twisted wood wand with crystals on either end.', '2019-02-07 05:42:59', '2019-02-07 05:42:59'),
(116, 7, 32, 'Quartz Directional Points', 'quartz-directional-points', '<p>Quartz Point Directionals. &nbsp;Directions are embossed on each stone, North, South, East, West. &nbsp;&nbsp;&nbsp;These are natural stones so sizes vary. &nbsp;Generally 4-5&quot; high.</p>', '39.99', NULL, NULL, '5.00', NULL, '90222El-Reiki-004-Crystal-Quartz-directionals.jpg', 0, 'Quartz Point Directionals', 'Quartz point, directional, wicca, pagan, altar stones', 'Quartz Point Directionals.  Directions are embossed on each stone, North, South, East, West.', '2019-02-07 06:05:23', '2019-02-07 06:05:23'),
(117, 7, 32, 'Mini Altar Stones', 'mini-altar-stones', '<p>Take your Altar with you on the go! &nbsp; Embossed Altar Directional Stones. &nbsp; North South East West and a Pentacle.</p>\r\n\r\n<p>&nbsp;</p>', '24.95', NULL, NULL, '5.00', NULL, '58750El-Reiki-minialtar-Element-Set-with-Pentagra.jpg', 0, 'Embossed Altar Directional Stones', 'altar stones, directionals, wicca, pagan, altar', 'Embossed Altar Directional Stones.   North South East West and a Pentacle.', '2019-02-07 06:09:26', '2019-02-07 06:09:26'),
(118, 6, 31, 'Amethyst Crystal Tree', 'amethyst-crystal-tree', '<p>Amethyst crystal tree will bring peaceful energy wherever it is placed</p>', '32.00', NULL, NULL, '6.00', NULL, '57493Tree-002-Amethyst-Tee-300pcs-Chips.jpg', 0, 'Amethyst Tree', 'amethyst, tree', 'Amethyst chip crystal tree', '2019-02-07 06:13:44', '2019-02-07 06:13:44'),
(119, 6, 35, 'Small Himalayan Salt Lamp', 'small-himalayan-salt-lamp', '<p>Small Himalayan salt lamps come on a wood base and stand 6&quot; to 7 1/2 inches tall. &nbsp; They weigh approximately 5 to 6.5 pounds each.&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(0, 0, 0)\">Himalayan Salt Lamps are made from pieces of Himalayan salt crystals. They serve as beautiful interior decorations and act as natural sources of light. However, the many diverse functions of Himalayan salt extend far beyond aesthetics. Combined with a light source inside the lamps, the chunks of salt produce negative ions, which yield positive effects on indoor air. Placing a Himalayan salt lamp in every room of the home can reap several health and environmental benefits. Among other things, they can calm allergies and reduce asthma, cleanse, deodorize and purify air, enhance mood, alleviate stress and promote relaxation.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '25.00', NULL, NULL, '9.00', 1, '91815salt lamp medium1.jpg', 0, 'Small Himalayan Salt Lamp on Wood Base.', 'salt lamp, himalayan', 'Small Himalayan Salt Lamp on Wood Base.', '2019-02-07 06:22:54', '2019-02-07 06:22:54'),
(120, 6, 35, 'Bowl of Fire Himalayan Salt Lamp', 'bowl-of-fire-himalayan-salt-lamp', '<p>Bowl of Fire Salt Lamp. &nbsp;This magnificent salt lamp comes with a 4&quot; high by 6.5 wide Salt bowl and natural salt pieces that light up beautifully and fill the bowl. &nbsp;There is a notched wood base that allows for a cord and bulb (included) to fit perfectly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '49.99', NULL, NULL, '9.00', NULL, '17081FireBowlLamp1.jpg', 0, 'Bowl of Fire Himalayan Salt Lamp', 'Fire bowl, bowl salt lamp, himalayan', 'Bowl of Fire Salt Lamp.  This magnificent salt lamp comes with a 4\" high by 6.5 wide Salt bowl and natural salt pieces that light up beautifully and fill the bowl.  There is a notched wood base that allows for a cord and bulb (included) to fit perfectly.', '2019-02-07 06:28:02', '2019-02-07 06:28:02'),
(121, 6, 25, 'Reiki Symbol Stones', 'reiki-symbol-stones', '<p>Beautiful embossed black agate palm stones with each of the four Reiki healing symbols. &nbsp;&nbsp;</p>', '27.99', NULL, NULL, '5.00', NULL, '42472Reiki-085-Double-Embossed-Engraved-Usui-Reiki-Set.jpg', 0, 'Reiki Symbol Stones', 'Reiki, healing, Reiki symbol', 'Double Embossed Engraved Healing Reiki Symbol Stones', '2019-02-07 16:18:47', '2019-02-07 16:18:47'),
(122, 1, 7, 'Aventurine Heart Chakra Bracelet', 'aventurine-heart-chakra-bracelet', '<p>Aventurine bead stretch bracelet to heal your heart chakra. &nbsp; Aventurine is one of the stones that heals and balances the heart chakra. &nbsp; Center heart engraved with Anahata, the heart symbol.</p>', '14.99', NULL, NULL, '3.00', NULL, '18550IMG_0732.JPG', 0, 'Aventurine Heart Chakra Bracelet', 'aventurine, heart chakra, anahata, bracelet', 'Aventurine bead stretch bracelet to heal your heart chakra', '2019-02-07 16:22:32', '2019-02-07 16:22:32'),
(123, 1, 13, 'Aquamarine Pendant', 'aquamarine-pendant', '<p>Lovely blue aquamarine set in sterling silver. &nbsp;Chain included &nbsp; Aquamarine stone is approximately&nbsp;5 x7&nbsp;</p>\r\n\r\n<p><strong>Aquamarine</strong><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">&nbsp;stones channel the healing energy of the ocean and are used talismans or amulets for good luck, fearlessness, and eternal happiness.</span></p>\r\n\r\n<p>Aquamarine is associated with water. &nbsp;Its cooling energy can calm anger and helps create a relaxed but alert state of mind. &nbsp; it can help you stay connected to your inner wisdom in th emidst of conflict. &nbsp;The result is the ability to speak your truth clearly in a way that contributes to peace and harmony. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '39.99', NULL, NULL, '5.00', 0, '13917IMG_0609.JPG', 0, 'Aquamarine Sterling Silver Pendant', 'aquamarine, march birthstone, sterling silver, necklace, pendant', 'Lovely blue aquamarine set in sterling silver.  Chain included   Aquamarine stone is approximately 5 x7 \r\n\r\nAquamarine stones channel the healing energy of the ocean and are used talismans or amulets for good luck, fearlessness, and eternal happiness.', '2019-02-07 16:28:07', '2019-02-07 17:00:28'),
(124, 6, 25, 'Rose Quartz Engraved Love Heart with pouch', 'rose-quartz-engraved-love-heart-with-pouch', '<p>Pretty rose quartz heart engraved with &quot;Love&quot; and includes a pouch that says &quot;I&nbsp;<img alt=\"heart\" src=\"https://www.pixiedustsarasota.com/public/admin/ckeditor/plugins/smiley/images/heart.gif\" style=\"height:20px; width:20px\" title=\"heart\" />U&quot;</p>', '14.99', NULL, NULL, '5.00', 0, '96340Eng-Word-282-Engraved-Love-Symbol-Stones.jpg', 0, 'Rose Quartz Love Heart', 'Rose quartz, heart, love', 'Pretty rose quartz heart engraved with \"Love\" and includes a pouch', '2019-02-07 16:32:37', '2019-02-07 23:55:05'),
(125, 1, 13, 'Amethyst Pendant', 'amethyst-pendant', '<p>Marquise shaped cabochon amethyst set in sterling silver. &nbsp; Includes 18&quot; chain.</p>\r\n\r\n<p>Known as the stone of peace, ameth<span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">yst</span><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">&nbsp;crystals are potent stones to help calm the mind, aid healing and they bring intense spiritual growth.</span></p>\r\n\r\n<p>&nbsp;</p>', '29.99', NULL, NULL, '5.00', NULL, '95572IMG_0729.JPG', 0, 'Amethyst Pendant', 'amethyst, marquise, sterling silver, pendant, necklace', 'Marquise shaped cabochon amethyst set in sterling silver.   Includes 18\" chain.', '2019-02-07 16:39:27', '2019-02-07 16:39:27'),
(126, 1, 13, 'Round Amethyst Pendant', 'round-amethyst-pendant', '<p><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">Set in Sterling Silver, this round amethyst will be a staple of your wardrobe.</span></p>\r\n\r\n<p><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">Known as the stone of peace, amethyst&nbsp;crystals are potent stones to calm the mind, aid healing and&nbsp;bring intense spiritual growth.</span></p>', '29.99', NULL, NULL, '5.00', NULL, '91713IMG_0728.JPG', 0, 'Round Amethyst Pendant', 'amethyst, pendant, sterling silver, necklace', 'Round amethyst pendant set in sterling silver.  Amethyst crystals are potent stones to aid healing and they bring intense spiritual growth.', '2019-02-07 16:42:48', '2019-02-07 16:42:48'),
(127, 1, 13, 'Faceted Ruby Bracelet', 'faceted-ruby-bracelet', '<p>This faceted ruby bead bracelet sparkles and is an absolute WOW item for the price! &nbsp;Sterling silver clasp. &nbsp;Adjustable sizing fits most wrists.&nbsp;</p>\r\n\r\n<p>Ruby is an activator of passion, confidence, determination, personal power and adventure. &nbsp; It helps you develop courage and face your fears. &nbsp;It stimulates energy, enthusiasm, the willingness to try new things and the fortitude to see them through. &nbsp; Ruby is a powerhouse of life-force energy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '35.00', NULL, NULL, '5.00', 1, '28919IMG_0726.JPG', 0, 'Ruby Faceted Bead Bracelet', 'ruby, bracelet, sterling silver', 'This faceted natural ruby bead bracelet sparkles and is an absolute WOW item for the price!  Sterling silver clasp.  Adjustable sizing fits most wrists.', '2019-02-07 16:51:42', '2019-02-07 16:51:42'),
(128, 1, 13, 'Aquamarine Faceted Bead Bracelet', 'aquamarine-faceted-bead-bracelet', '<p>Sparkling aquamarine faceted bead bracelet. &nbsp;Sterling silver clasp. &nbsp;Adjustable to fit most wrists.</p>\r\n\r\n<p>Aquamarine is associated with water. &nbsp;Its cooling energy can calm anger and helps create a relaxed but alert state of mind. &nbsp; it can help you stay connected to your inner wisdom in th emidst of conflict. &nbsp;The result is the ability to speak your truth clearly in a way that contributes to peace and harmony. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '34.00', NULL, NULL, '5.00', 0, '53641IMG_0721.JPG', 0, 'Aquamarine Faceted Bead Bracelet', 'Aquamarine, bracelet, sterling silver, march birthstone', 'Sparkling aquamarine faceted bead bracelet.  Sterling silver clasp.  Adjustable to fit most wrists.', '2019-02-07 16:58:04', '2019-02-07 17:00:52'),
(129, 1, 13, 'Moonstone Faceted Bead Bracelet', 'moonstone-faceted-bead-bracelet', '<p>Faceted moonstone beads shine in this bracelet! &nbsp; Sterling silver clasp. &nbsp;Adjustable to fit most wrists.&nbsp;<span style=\"background-color:rgba(255, 255, 255, 0.901961); color:rgb(86, 86, 86); font-family:lato,verdana,helvetica,arial,sans-serif; font-size:16px\">&nbsp;</span></p>\r\n\r\n<p>Moonstone is a stone of feminine power and mystery. &nbsp;It assists in looking inward and finding hidden truths in our unconscious as well as in past lives. &nbsp;It enhances intuition and encourages the wisdom and patience to trust Diving timing.</p>\r\n\r\n<p>&nbsp;</p>', '33.99', NULL, NULL, '5.00', NULL, '99045IMG_0727.JPG', 0, 'Moonstone Faceted Bead Bracelet', 'Moonstone, bracelet, sterling silver', 'Faceted moonstone beads shine in this bracelet!   Sterling silver clasp.  Adjustable to fit most wrists.', '2019-02-07 17:07:51', '2019-02-07 17:07:51'),
(130, 1, 13, 'Amethyst Faceted Bead Bracelet', 'amethyst-faceted-bead-bracelet', '<p>Amethyst faceted bead bracelet. &nbsp;Sterling silver clasp. &nbsp;Adjustable to fit most wrists. &nbsp;</p>\r\n\r\n<p>Amethyst is the stone of peace. &nbsp;It helps calm your mind and facilitates meditation and intuition.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '33.99', NULL, NULL, '5.00', NULL, '49867IMG_0722.JPG', 0, 'Amethyst Faceted Bead Bracelet', 'Amethyst, bracelet, sterling silver, february birthstone', 'Faceted moonstone beads shine in this bracelet!   Sterling silver clasp.  Adjustable to fit most wrists.', '2019-02-07 17:13:29', '2019-02-07 17:13:29'),
(131, 1, 13, 'Labradorite Faceted Bead Bracelet', 'labradorite-faceted-bead-bracelet', '<p>Labradorite faceted bead bracelet. &nbsp;Sterling silver clasp. &nbsp; Fits most wrists. &nbsp;</p>\r\n\r\n<p>Labradorite is the stone of dreams and intuition. &nbsp; It is very protective against negative energies, blaancing and strengthening your aura and sealing it from energy leaks. &nbsp; Labradorite is a stone of transformation and change. &nbsp;It enhances strength of will and feelings of inner worth.</p>\r\n\r\n<p>&nbsp;</p>', '33.99', NULL, NULL, '5.00', NULL, '33167IMG_0725.JPG', 0, 'Labradorite faceted bead bracelet.  Sterling silver clasp.   Fits most wrists.', 'labradorite, bracelet, sterling silver', 'Labradorite faceted bead bracelet.  Sterling silver clasp.   Fits most wrists.  \r\n\r\nLabradorite is the stone of dreams and intuition.   It is very protective against negative energies, blaancing and strengthening your aura and sealing it from energy leaks.   Labradorite is a stone of transformation and change.  It enhances strength of will and feelings of inner worth.', '2019-02-07 17:21:00', '2019-02-07 17:21:00'),
(132, 2, 2, 'Blue Blessing Buddha', 'blue-blessing-buddha', '<p>Small Buddha in Blessing Pose. &nbsp; Approximately 5&quot; high.</p>', '14.99', NULL, NULL, '6.00', NULL, '62594small blue buddha.jpg', 0, 'Blue and White Blessing Buddha', 'Blue, buddha, blessing, statue', 'Small Buddha in Blessing Pose.   Approximately 5\" high.', '2019-02-07 17:33:43', '2019-02-07 17:33:43'),
(133, 3, 15, 'Blue and White Buddha Incense burner', 'blue-and-white-buddha-incense-burner', '<p>Blue and White Buddha Incense burner</p>', '17.99', NULL, NULL, '6.00', NULL, '18532bluebuddha.jpg', 0, 'Blue and White Buddha Incense burner', 'incense, incense burner, boat, buddha', 'Blue and White Buddha Incense burner', '2019-02-07 17:36:02', '2019-02-07 17:36:02'),
(135, 2, 2, 'Young Buddha Praying', 'young-buddha-praying', '<p>Young Buddha praying in gold resin. &nbsp;8 1/2 inches high</p>', '35.99', NULL, NULL, '5.00', NULL, '37528youngbuddhaprayinggsc.jpg', 0, 'Young Buddha Praying', 'buddha, monk, prayer', 'Young Buddha praying in gold resin.', '2019-02-07 17:44:42', '2019-02-07 17:44:42'),
(136, 2, 29, 'Blue Dragon on Geode', 'blue-dragon-on-geode', '<p>Little blue dragon sits on a geode while he&nbsp;guards eggs &nbsp; Approximately 5&quot; high</p>\r\n\r\n<p>&nbsp;</p>', '15.99', NULL, NULL, '5.00', NULL, '54452bluedragonon geode.jpg', 0, 'Blue dragon on geode', 'dragon, geode, blue', 'Little blue dragon sits on a geode while he guards eggs', '2019-02-07 17:48:57', '2019-02-07 17:48:57'),
(137, 2, 29, 'Blue Dragon with Baby', 'blue-dragon-with-baby', '<p>Blue dragon and baby. &nbsp; 7&quot; wide</p>', '59.99', NULL, NULL, '5.00', NULL, '84883dragonandbaby.jpg', 0, 'Dragon and Baby', 'dragon, baby dragon, blue', 'Blue dragon with baby', '2019-02-07 17:52:50', '2019-02-07 17:52:50'),
(138, 2, 29, 'Large Black and White Yin/Yang Dragon', 'large-black-and-white-yinyang-dragon', '<p>Large Scale Black and White Dragons are yin and yang to each other. &nbsp;19 1/2 inches high.</p>', '199.00', NULL, NULL, '0.00', NULL, '26676blackandwhite.jpg', 0, 'Black and White Dragons', 'black, white, dragon, dragons, yin yang', 'Large Scale Black and White Dragons are yin and yang to each other.  19 1/2 inches high.', '2019-02-07 17:57:37', '2019-02-07 17:57:37'),
(139, 2, 28, 'Sleeping Fairy', 'sleeping-fairy', '<p>Blue and purple fairy peacefully sleeping. &nbsp;4&quot; high</p>', '25.99', NULL, NULL, '5.00', NULL, '84289bluepurplesleepingfairy.jpg', 0, 'Sleeping fairy', 'fairy, sleeping', 'Blue and purple fairy peacefully sleeping.  4\" high', '2019-02-07 18:02:15', '2019-02-07 18:02:15'),
(140, 2, 29, 'Unicorn', 'unicorn', '<p>Everyone loves Unicorns! &nbsp; Stants 6 3/4&quot; high.</p>', '14.95', NULL, NULL, '5.00', NULL, '52968unicorngsc.jpg', 0, 'Unicorn', 'unicorn', 'unicorn', '2019-02-07 18:07:05', '2019-02-07 18:07:05'),
(141, 4, 24, 'Elephant Trinket Box', 'elephant-trinket-box', '<p>Resin Elephant trinket box appears to be carved of wood. &nbsp;Stands 3 1/2 inches high.</p>', '11.00', NULL, NULL, '5.00', NULL, '11879woodlike elephant trinket box.jpg', 0, 'Elephant Trinket Box', 'box, elephant, trinket', 'elephant trinket box', '2019-02-07 18:20:47', '2019-02-07 18:20:47'),
(142, 4, 36, 'Plush Bastet', 'plush-bastet', '<p>Plush Bastet. &nbsp;5 1/2&quot;&nbsp;</p>\r\n\r\n<p>Bastet is the Egyptian goddess of cats, the home, music dance, fertility family and protector of pregnant women and children.</p>\r\n\r\n<p>&nbsp;</p>', '14.95', NULL, NULL, '5.00', NULL, '53508plushbastet.jpg', 0, 'Plush Bastet', 'bast, bastet, plush, stuffed', 'Plush Bastet.  Bastet is the Egyptian goddess of cats, the home, fire, sunrise, music, dance, pleasure as well as sexuality, fertility, family, pregnant women and children', '2019-02-07 18:29:58', '2019-02-07 18:29:58'),
(143, 6, 48, 'Selenite Tower Lamp', 'selenite-tower-lamp', '<p>Selenite Tower Lamp &nbsp;Stands approximately 16-18 inches tall. &nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:12px\">Named after the Greek Goddess of the Moon, Selenite Crystal&#39;s energy allows one to get in touch with their higher-self, expanding awareness of the metaphysical and spiritual. The Selenite Lamp is produced from a naturally clear or opaque form of gypsum crystal which allows the light to easy pass through to create a warm calming glow. Selenite lends to reconciliation and energy to the body and is associated with the 7th Chakra, more commonly known as the Crown. Often used in meditation, it is known to clear confusion, clear negative thoughts and bring about a conscious understanding of the sub-conscious. &nbsp; Selenite is used to clear negative energy.</span></span></p>', '89.00', NULL, NULL, '5.00', 0, '91080Selenite Skyscraper Lamp Medium.jpg', 0, 'Selenite Skyscraper Lamp', 'selenite, crystal lamp, lamp, skyscraper', 'Selenite Tower Lamp  Stands approximately 16-18 inches tall.', '2019-02-08 02:48:37', '2019-03-09 00:36:20'),
(144, 6, 48, 'Selenite Cylinder Lamp', 'selenite-cylinder-lamp', '<p>Selenite Tower Lamp &nbsp;Stands approximately 12-14&nbsp;inches tall. &nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(102, 102, 102)\">Named after the Greek Goddess of the Moon, Selenite Crystal&#39;s energy allows one to get in touch with their higher-self, expanding awareness of the metaphysical and spiritual. The Selenite Lamp is produced from a naturally clear or opaque form of gypsum crystal which allows the light to easy pass through to create a warm calming glow. Selenite lends to reconciliation and energy to the body and is associated with the 7th Chakra, more commonly known as the Crown. Often used in meditation, it is known to clear confusion, clear negative thoughts and bring about a conscious understanding of the sub-conscious. &nbsp;Selenite is known to clear negative energy.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', '59.00', NULL, NULL, '5.00', 0, '81695Selenite Round Flat Top Lamps2.jpg', 0, 'Selenite Cylinder Lamp', 'Selenite, lamp, crystal lamp', 'Selenite Tower Lamp  Stands approximately 12-14 inches tall.  Named after the Greek Goddess of the Moon, Selenite Crystal\'s energy allows one to get in touch with their higher-self, expanding awareness of the metaphysical and spiritual. The Selenite Lamp is produced from a naturally clear or opaque form of gypsum crystal which allows the light to easy pass through to create a warm calming glow. Selenite lends to reconciliation and energy to the body and is associated with the 7th Chakra, more commonly known as the Crown. Often used in meditation, it is known to clear confusion, clear negative thoughts and bring about a conscious understanding of the sub-conscious.  Selenite is known to clear negative energy.', '2019-02-08 03:00:26', '2019-03-09 00:34:42'),
(145, 6, 48, 'Selenite USB lamp', 'selenite-usb-lamp', '<p>New! Selenite USB&nbsp;Lamp &nbsp;. &nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(102, 102, 102)\">Named after the Greek Goddess of the Moon, Selenite Crystal&#39;s energy allows one to get in touch with their higher-self, expanding awareness of the metaphysical and spiritual. The Selenite Lamp is produced from a naturally clear or opaque form of gypsum crystal which allows the light to easy pass through to create a warm calming glow. Selenite lends to reconciliation and energy to the body and is associated with the 7th Chakra, more commonly known as the Crown. Often used in meditation, it is known to clear confusion, clear negative thoughts and bring about a conscious understanding of the sub-conscious. &nbsp;Selenite is known to clear negative energy.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', '59.99', NULL, NULL, '5.00', 0, '52743earthluxeselenitelamp.jpg', 0, 'Selenite USB Lamp', 'selenite, usb lamp, selenite lamp', 'Selenite USB lamp', '2019-02-08 03:15:29', '2019-03-29 01:58:52'),
(146, 6, 35, 'Heart Shaped Himalayan Salt Lamp', 'heart-shaped-himalayan-salt-lamp', '<p>Heart Shaped Himalayan Salt Lamp. &nbsp;7&quot; tall. &nbsp;</p>\r\n\r\n<p>&nbsp;<span style=\"font-family:amazon ember,arial,sans-serif; font-size:small\">Purify the air and beautify the home. Relax in the warm glow of this Himalayan natural salt crystal lamp. It is wholesome and good for a creative mind. Bring divine harmony to any room with this beautiful salt crystal lamp. Its therapeutic glow of orange hues infuses a natural calm bringing the mind and body to a gradual sense of tranquility and well being. Experience it for yourself.</span></p>', '58.00', NULL, NULL, '5.00', NULL, '95587heartSaltLampShape_100150.jpg', 0, 'Heart Shaped Himalayan Salt Lamp', 'heart, himalayan salt, salt lamp', 'Heart Shaped Himalayan Salt Lamp 7\"  \r\n\r\n Purify the air and beautify the home. Relax in the warm glow of this Himalayan natural salt crystal lamp. It is wholesome and good for a creative mind. Bring divine harmony to any room with this beautiful salt crystal lamp. Its therapeutic glow of orange hues infuses a natural calm bringing the mind and body to a gradual sense of tranquility and well being. Experience it for yourself.', '2019-02-08 03:22:48', '2019-02-08 03:22:48');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `price`, `discount`, `discount_price`, `shipping_price`, `best_seller`, `image`, `prd_cs_opt`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(147, 4, 21, 'Relaxed Lavender and Amethyst Wellness Candle 4 oz Tin', 'relaxed-lavender-and-amethyst-wellness-candle-4-oz-tin', '<p>Light this healing&nbsp;Wellness Candle&trade;&nbsp;to create a soothing environment that brings clarity and inner peace. The beautiful combination of lavender, lemongrass and amethyst will ease your senses with a calming and peaceful energy.</p>\r\n\r\n<p>Each&nbsp;Bee Lucia&trade;&nbsp;Wellness Candle&trade;&nbsp;is handmade in Portland, OR. We make our&nbsp;Wellness Candles&nbsp;with a unique blend of beeswax, organic coconut oil, pure essential oils and natural gemstone crystals to nourish the spirit and your environment. Made without paraffin or soy, 100% clean burning and hypoallergenic.</p>', '14.00', NULL, NULL, '5.00', NULL, '79814Relaxed-Tin.jpg', 0, 'Relaxed Lavender and Amethyst Wellness Candle 4 oz tin', 'relaxed, lavender, amethyst, beelucia, wellness candle', 'Light this healing Wellness Candle™ to create a soothing environment that brings clarity and inner peace. The beautiful combination of lavender, lemongrass and amethyst will ease your senses with a calming and peaceful energy.', '2019-02-08 03:53:31', '2019-02-08 03:53:31'),
(148, 4, 21, 'Loved Rose Quartz and Mint Wellness Candle 4 oz Tin', 'loved-rose-quartz-and-mint-wellness-candle-4-oz-tin', '<p>Light this healing&nbsp;Wellness Candle&trade;&nbsp;to create a compassionate environment that cultivates love, renewal and positivity. The refreshing mint and the loving, gentle energy of rose quartz complement each other to create space for purifying and opening the heart, restoring trust and healing capacity.</p>\r\n\r\n<p>Each&nbsp;Bee Lucia&trade;&nbsp;Wellness Candle&trade;&nbsp;is handmade in Portland, OR. We make our&nbsp;Wellness Candles&nbsp;with a unique blend of beeswax, organic coconut oil, pure essential oils and natural gemstone crystals to nourish the spirit and your environment. Made without paraffin or soy, 100% clean burning and hypoallergenic.</p>', '14.00', NULL, NULL, '5.00', NULL, '65137Loved-Tin.jpg', 0, 'Loved Rose Quartz and Mint Wellness Candle 4 oz Tin', 'Loved, Rose Quartz, Mint, Wellness Candle, Tin', 'Light this healing Wellness Candle™ to create a compassionate environment that cultivates love, renewal and positivity. The refreshing mint and the loving, gentle energy of rose quartz complement each other to create space for purifying and opening the heart, restoring trust and healing capacity.\r\n\r\nEach Bee Lucia™ Wellness Candle™ is handmade in Portland, OR. We make our Wellness Candles with a unique blend of beeswax, organic coconut oil, pure essential oils and natural gemstone crystals to nourish the spirit and your environment. Made without paraffin or soy, 100% clean burning and hypoallergenic.', '2019-02-08 04:00:19', '2019-02-08 04:00:19'),
(149, 4, 21, 'Inspired Citrine, Cinnamon and Clove Wellness Candle 4 oz Tin', 'inspired-citrine-cinnamon-and-clove-wellness-candle-4-oz-tin', '<p>Light this healing&nbsp;Wellness Candle&trade;&nbsp;to create an inspiring environment filled with warmth, joy and delight! The spicy combination of cinnamon, clove bud and lemongrass along with the comforting and life-giving energy of citrine creates a liberating and uplifting experience.</p>\r\n\r\n<p>Each&nbsp;Bee Lucia&trade;&nbsp;Wellness Candle&trade;&nbsp;is handmade in Portland, OR. We make our&nbsp;Wellness Candles&nbsp;with a unique blend of beeswax, organic coconut oil, pure essential oils and natural gemstone crystals to nourish the spirit and your environment. Made without paraffin or soy, 100% clean burning and hypoallergenic.</p>', '14.00', NULL, NULL, '5.00', NULL, '67407Inspired-Tin.jpg', 0, 'Inspired Citrine, Cinnamon and Clove Wellness Candle 4 oz Tin', 'candle, tin, citrine, inspired, wellness', 'Light this healing Wellness Candle™ to create an inspiring environment filled with warmth, joy and delight! The spicy combination of cinnamon, clove bud and lemongrass along with the comforting and life-giving energy of citrine creates a liberating and uplifting experience.', '2019-02-08 04:20:00', '2019-02-08 04:20:00'),
(150, 1, 7, 'Chakra Tree of Life Pendant', 'chakra-tree-of-life-pendant', '<p>Sterling Silver Tree of Life Chakra Pendant. &nbsp;18&quot; chain included. &nbsp;</p>\r\n\r\n<p>Stones include: &nbsp;</p>\r\n\r\n<p>Garnet--Root Chakra</p>\r\n\r\n<p>Carnelian--Sacral Chakra &nbsp;</p>\r\n\r\n<p>Citrine--Solar Plexus &nbsp;Peridot--Heart Chakra &nbsp;</p>\r\n\r\n<p>Blue Topaz--Throat Chakra &nbsp;</p>\r\n\r\n<p>Iolite--Third Eye Chakra &nbsp;</p>\r\n\r\n<p>Amethyst--Crown Chakra</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '74.99', NULL, NULL, '5.00', NULL, '80712fullsizeoutput_c72.jpeg', 0, 'Tree of Life Chakra Pendant', 'Tree of Life, chakra, pendant', 'Sterling Silver Tree of Life Chakra Pendant.  18\" chain included.', '2019-02-08 04:40:56', '2019-02-08 04:40:56'),
(151, 1, 3, 'Quartz Crystal Flat Point Chakra Pendant', 'quartz-crystal-flat-point-chakra-pendant', '<p>Quartz Crystal Flat Point Pendant</p>', '14.99', NULL, NULL, '5.00', 0, '72938fullsizeoutput_c79.jpeg', 0, 'Quartz Crystal Chakra Pendant', 'chakra, pendant', 'Chakra Pendant', '2019-02-08 04:51:45', '2019-02-08 05:03:55'),
(152, 2, 28, 'White Lounging Mermaid Statue', 'white-lounging-mermaid-statue', '<ol style=\"list-style-type:initial\">\r\n	<li>11 in. Long, 7.5 in. High, 4 in. Wide</li>\r\n	<li>Artistically Crafted of Resin in Striking Stone Detail</li>\r\n	<li>White Marble Finish With Flowing Long Tresses and a Curled Tail That Creates Movement Though She is Sitting Still</li>\r\n	<li>The Lounging Mermaid of Gazing Gulf is an Eye-Catching Piece That Looks Amazing From Any Angle</li>\r\n	<li>Charming as a Gift Any Mermaid Lover Is Sure to Take Delight In</li>\r\n</ol>', '59.99', NULL, '55.00', '5.00', 0, '30782whitemermaid.jpg', 0, 'White Lounging Mermaid Statue', 'mermaid, lounging', 'white lounging mermaid statue', '2019-02-08 05:07:35', '2019-02-13 02:17:36'),
(153, 7, 34, 'Tibetan Copper Offering Bowl with Om', 'tibetan-copper-offering-bowl-with-om', '<p>Small copper offering bowl with Om decoration.</p>', '14.00', NULL, NULL, '5.00', NULL, '96782omofferingbowl.jpg', 0, 'Copper Tibetan Offering Bowl with Om', 'tibetan, offering bowl', 'Tibetan Copper offering bowl with Om', '2019-02-08 05:15:01', '2019-02-08 05:15:01'),
(154, 7, 34, 'Tibetan Copper Offering Bowl with Triquetra', 'tibetan-copper-offering-bowl-with-triquetra', '<p>Tibetan copper offering bowl with Triquetra</p>', '14.00', NULL, NULL, '5.00', NULL, '31680triquetra.jpg', 0, 'Tibetan Copper Offering Bowl with Triquetra', 'Tibetan, offering bowl, triquetra', 'Tibetan Copper Offering Bowl with Triquetra', '2019-02-08 05:23:10', '2019-02-08 05:23:10'),
(155, 8, 37, 'Rider Waite Tarot Cards', 'rider-waite-tarot-cards', '<p>The cards were drawn in 1909 by Pamela Colman Smith under the direction of Arthur Edward Waite. Smith&#39;s vibrant drawings transformed the standard tarot deck.</p>\r\n\r\n<p>&quot;A unique feature of the Rider-Waite deck, and one of the of the principal reasons for its enduring popularity, is that all of the cards, including the Minor Arcana, depict full scenes with figures and symbols. Prior to the Rider-Waite Tarot, the pip cards of almost all tarot decks were marked only with the arrangement of the suit signs -- swords, wands, cups, and coins, or pentacles. The pictorial images on all the cards allow interpretations without the need to repeatedly consult explanatory text. The innovative Minor Arcana, and Pamela Colman Smith&#39;s ability to capture the subtleties of emotion and experience have made the Rider-Waite Tarot a model for the designs of many tarot packs.&quot; -- (<em>from The Encyclopedia of Tarot, Volume III</em>)</p>', '22.95', NULL, NULL, '5.00', 0, '45413Rider Waite.jpg', 0, 'Rider Waite Tarot Cards', 'Tarot, cards, rider waite', 'Rider Waite Tarot Deck', '2019-02-08 05:48:33', '2019-03-05 04:30:39'),
(156, 8, 38, 'Black Onyx Rune Set', 'black-onyx-rune-set', '<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgba(0, 0, 0, 0.870588)\">Rune set consisting of of 25 tumbled, polished black onyx stones that are handcrafted with engraved, gold-painted lettering. </span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgba(0, 0, 0, 0.870588)\">&nbsp;</span></span></span><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(0, 0, 0)\">Runes are an ancient form of oracle used by those seeking advice. Runes have a long history, dating back to ancient use by Germanic and Nordic tribes, and are still widely used in today&rsquo;s society.</span></span></p>', '24.99', NULL, NULL, '5.00', NULL, '59512black onyx runes.jpg', 0, 'Black Onyx Rune Set', 'Black Onyx, Runes', 'Rune set consisting of of 25 tumbled, polished black onyx stones that are handcrafted with engraved, gold-painted lettering.', '2019-02-08 05:57:11', '2019-02-08 05:57:11'),
(157, 8, 39, 'Seven Chakra Pendulum', 'seven-chakra-pendulum', '<p>Seven chakra gemstones bonded together and placed on a chakra bead silver plated chain.</p>', '17.00', NULL, NULL, '5.00', NULL, '92173IMG_0529.JPG', 0, 'Seven Chakra Pendulum', 'chakra, pendulum', 'Seven chakra gemstones bonded together and placed on a chakra bead silver plated chain.', '2019-02-08 15:20:28', '2019-02-08 15:20:28'),
(158, 8, 39, 'Moonstone and Tourmaline Pendulum', 'moonstone-and-tourmaline-pendulum', '<p>Moonstone and Tourmaline pendulum on a sterling silver chain.</p>', '17.00', NULL, NULL, '5.00', NULL, '48616IMG_0523.JPG', 0, 'Moonstone and Tourmaline pendulum.', 'Moonstone, tourmaline, pendulum', 'Moonstone and Tourmaline pendulum.', '2019-02-08 15:22:58', '2019-02-08 15:22:58'),
(159, 8, 39, 'Faceted Clear Quartz Crystal Pendulum', 'faceted-clear-quartz-crystal-pendulum', '<p>Faceted clear quartz crystal pendulum on a sterling silver chain.</p>', '15.00', NULL, NULL, '5.00', NULL, '75860IMG_0528.JPG', 0, 'Faceted clear quartz crystal pendulum on a sterling silver chain.', 'quartz, crystal, pendulum', 'Faceted clear quartz crystal pendulum on a sterling silver chain.', '2019-02-08 15:26:11', '2019-02-08 15:26:11'),
(160, 8, 39, 'Aquamarine Pendulum', 'aquamarine-pendulum', '<p>Aquamarine pendulum on a silver chain.</p>', '17.00', NULL, NULL, '5.00', NULL, '99506IMG_0531.JPG', 0, 'Aquamarine pendulum', 'aquamarine, pendulum', 'Aquamarine pendulum on a silver chain.', '2019-02-08 15:28:50', '2019-02-08 15:28:50'),
(161, 8, 39, 'Ruby Zoisite Pendulum', 'ruby-zoisite-pendulum', '<p>Ruby Zoisite pendulum</p>', '17.00', NULL, NULL, '5.00', NULL, '81849IMG_0530.JPG', 0, 'Ruby Zoisite pendulum on a silver chain', 'ruby zoisite, pendulum', 'Ruby zoisite pendulum on a silver chain.', '2019-02-08 15:31:16', '2019-02-08 15:31:16'),
(162, 8, 39, 'Rose Quartz Pendulum', 'rose-quartz-pendulum', '<p>Rose Quartz pendulum on silver chain</p>', '15.00', NULL, NULL, '5.00', NULL, '68367IMG_0521.JPG', 0, 'Rose Quartz pendulum on silver chain', 'rose quartz, pendulum', 'Rose Quartz pendulum on silver chain', '2019-02-08 15:33:58', '2019-02-08 15:33:58'),
(163, 8, 39, 'Amethyst Pendulum', 'amethyst-pendulum', '<p>Amethyst pendulum on silver chain.</p>', '15.00', NULL, NULL, '5.00', NULL, '66094IMG_0522.JPG', 0, 'Amethyst pendulum', 'amethyst, pendulum', 'Amethyst pendulum on silver chain', '2019-02-08 15:36:45', '2019-02-08 15:36:45'),
(164, 8, 39, 'Tiger Eye Pendulum', 'tiger-eye-pendulum', '<p>Tiger Eye Pendulum on Silver chain</p>', '17.00', NULL, NULL, '5.00', NULL, '42625IMG_0527.JPG', 0, 'Tiger eye pendulum', 'tiger eye, pendulum', 'Rose Quartz pendulum on silver chain', '2019-02-08 15:39:11', '2019-02-08 15:39:11'),
(165, 8, 39, 'Raw Amethyst Pendulum', 'raw-amethyst-pendulum', '<p>Raw Amethyst Pendulum on silver chain.</p>', '15.00', NULL, NULL, '5.00', NULL, '61184IMG_0525.JPG', 0, 'Raw amethyst pendulum on silver chain', 'amethyst, raw amethyst, pendulum', 'Raw amethyst pendulum on silver chain', '2019-02-08 15:41:46', '2019-02-08 15:41:46'),
(166, 1, 3, 'Ruby Zoisite Cap Pendant', 'ruby-zoisite-cap-pendant', '<p>Ruby Zoisite Cap Pendant&nbsp;includes a satin cord.</p>', '11.11', NULL, NULL, '3.00', NULL, '41284IMG_0516.JPG', 0, 'Ruby Zoisite Cap Pendant', 'ruby zoisite, pendant', 'Ruby Zoisite Cap Pendant.   Includes cord.', '2019-02-08 15:44:38', '2019-02-08 15:44:38'),
(168, 6, 25, 'Large Engraved Chakra Stone Set with Pouch', 'large-engraved-chakra-stone-set-with-pouch', '<p>Engraved chakra stones wtih pouch.</p>', '29.99', NULL, NULL, '5.00', NULL, '18848chakra stone set with pouch.jpg', 0, 'Engraved Chakra Stone Set with Pouch', 'chakra, stone', 'engraved chakra stone set with pouch', '2019-02-11 08:47:59', '2019-02-11 08:47:59'),
(169, 6, 25, 'Chakra Pocket Set', 'chakra-pocket-set', '<p>Engraved Chakra Stones in a pocket size!</p>', '14.99', NULL, NULL, '5.00', NULL, '25653minichakra.jpg', 0, 'Engraved Pocket Chakra Stone Set', 'pocket, chakra,', 'Engraved Chakra Stones in a pocket size!', '2019-02-11 09:00:08', '2019-02-11 09:00:08'),
(170, 1, 7, 'Wire Tree of Life Chakra Pendant', 'wire-tree-of-life-chakra-pendant', '<p>Wire Tree of Life Chakra Pendant&nbsp;includes satin cord.</p>', '11.11', NULL, NULL, '3.00', NULL, '67774Tree-Pend-015-Chakra-Stone-Tree-of-Life-Pendants.jpg', 0, 'Wire Tree of Life Chakra Pendant', 'Tree of life, chakra', 'Wire Tree of Life Chakra Pendant', '2019-02-11 09:06:08', '2019-02-11 09:06:08'),
(171, 1, 1, 'Green Jade Mala Bead Necklace', 'green-jade-mala-bead-necklace', '<p>108 Bead Jade Mala Necklace</p>', '29.99', NULL, NULL, '5.00', NULL, '20652Mala-052-Green-Jade-Japa-Mala-108-Beads.jpg', 0, 'Jade Mala Bead necklace', 'jade, mala, 108, meditation, prayer', 'Jade 108 bead mala necklace', '2019-02-11 09:12:14', '2019-02-11 09:12:14'),
(172, 5, 18, 'Celestial Acrylic Chime', 'celestial-acrylic-chime', '<p>Celestial Acrylic Windchime Moon and Stars &nbsp;19&quot; long</p>', '19.99', NULL, NULL, '5.00', 0, '55488celestialacrylicchime-2.jpg', 0, 'Celestial Acrylic Windchime with Moon and Stars', 'wind chime, moon, stars, celestial, chime', 'Celestial Acrylic Windchime with Moon and Stars', '2019-02-11 22:07:15', '2019-02-13 01:23:59'),
(173, 5, 18, 'Purple Agate Slice Wind Chime', 'purple-agate-slice-wind-chime', '<p>Purple Agate Slice Wind Chime &nbsp; 20&quot;</p>', '19.99', NULL, NULL, '5.00', 0, '64283purpleagateslice chime-2.jpg', 0, 'Purple Agate Slice Wind Chime', 'purple, agate, crystal, wind chime, chime', 'Purple Agate Slice Wind Chime', '2019-02-11 22:12:52', '2019-02-13 01:23:00'),
(174, 9, 40, 'Convex Bagua Mirror for Feng Shui', 'convex-bagua-mirror-for-feng-shui', '<p>Feng Shui&nbsp;Convex Bagua Mirror for repelling negative energy.</p>', '9.99', NULL, NULL, '5.00', 0, '31909bagua convex.jpg', 0, 'Convex Bagua Mirror for Feng Shui', 'feng shui, bagua, mirror, convex', 'Convex Bagua Mirror for Feng Shui.  Repels negative energy', '2019-02-11 22:51:31', '2019-02-11 22:54:06'),
(175, 9, 40, 'Feng Shui Concave Bagua Mirror', 'feng-shui-concave-bagua-mirror', '<p>Concave Bagua Mirror for neutralizing negative energy.</p>', '9.99', NULL, NULL, '5.00', NULL, '77948bagua.jpg', 0, 'Feng Shui Concave Bagua Mirror', 'feng shui, bagua, mirror, concave', 'Concave Bagua Mirror for neutralizing negative energy.', '2019-02-11 22:53:42', '2019-02-11 22:53:42'),
(176, 9, 40, 'Feng Shui Hanging Bagua Mirror on Red String', 'feng-shui-hanging-bagua-mirror-on-red-string', '<p><span style=\"color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px\">This auspicious double sided bagua features a mirror surround by the 12 Chinese zodiac animal signs on one side, and a colorful yin yang trigram on the other. The bagua has a vibrant multicolored mystic knot at the top and two large tassels at the bottom.</span></p>', '11.00', NULL, NULL, '5.00', NULL, '9537935216.jpg', 0, 'Feng Shui Hanging Double Sided Bagua Mirror', 'feng shui, bagua, mirror, red string', 'This auspicious double sided bagua features a mirror surround by the 12 Chinese zodiac animal signs on one side, and a colorful yin yang trigram on the other. The bagua has a vibrant multicolored mystic knot at the top and two large tassels at the bottom.', '2019-02-11 22:57:46', '2019-02-11 22:57:46'),
(177, 9, 40, 'Small Money Frog', 'small-money-frog', '<p><span style=\"font-size:12px\"><span style=\"color:rgb(0, 0, 0); font-family:montserrat,sans-serif\">Three legged frogs - called Chan Chu in Chinese - are a popular symbol of prosperity. It is thought that its fierce appearance with flared nostrils will drive away evil and protect your wealth.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:montserrat,sans-serif\">2&quot;</span></span></p>', '7.50', NULL, NULL, '5.00', NULL, '34984moneyfrogsmall.jpg', 0, 'Feng Shui Money Frog', 'money, frog, feng shui, chinese coin', 'Three legged frogs - called Chan Chu in Chinese - are a popular symbol of prosperity. It is thought that its fierce appearance with flared nostrils will drive away evil and protect your wealth.\r\n2\"', '2019-02-11 23:02:37', '2019-02-11 23:02:37'),
(178, 2, 29, 'Welcome Dragon', 'welcome-dragon', '<p>Welcome Dragon! &nbsp; Turn the sign around to say Benvenieue!</p>', '59.99', NULL, NULL, '5.00', NULL, '24198welcomedragon.jpg', 0, 'Welcome Dragon', 'welcome, dragon, sign', 'Welcome Dragon', '2019-02-12 02:03:51', '2019-02-12 02:03:51'),
(179, 2, 29, 'Dragon Stapler', 'dragon-stapler', '<p>Dragon Stapler<span style=\"color:rgb(65, 68, 72); font-family:arial; font-size:12px\">&nbsp;is the perfect accent for any dragon-lover&#39;s office!</span></p>', '24.99', NULL, NULL, '5.00', 1, '89603dragon stapler.jpg', 0, 'Dragon Stapler', 'dragon, stapler', 'Dragon Stapler', '2019-02-12 02:05:55', '2019-02-12 02:09:01'),
(180, 2, 17, 'Unconditional Surrender (Sailor and Nurse kiss)', 'unconditional-surrender-sailor-and-nurse-kiss', '<p>Ships Free! &nbsp;</p>\r\n\r\n<p>You&rsquo;ve probably seen the famous photo &ldquo;V-J Day in Times Square&rdquo; by photographer Alfred Eisenstaedt, starring the electrified man kissing a woman in New York City&rsquo;s Times Square on the day the end of World War II was announced.</p>\r\n\r\n<p>The kiss was spontaneous, and lucky to be captured by Eisenstaedt, but as the commotion in Times Square carried on, he separated from his subjects and never captured their names. &nbsp;</p>\r\n\r\n<p>The embrace has been reprinted countless times, and replicated in three-dimensional form by a sculptor (though of a slightly different angle, from a photo taken by a different photographer, not the famous image captured by Eisenstaedt).</p>\r\n\r\n<p>Over the years, the larger-than-life sculptures have live in Normandy, France, San Diego, California, Pearl Harbor, Hawaii, Hamilton, New Jersey, New York City, San Diego, California and Sarasota, Florida.</p>\r\n\r\n<p>&nbsp;</p>', '89.99', NULL, NULL, '0.00', 1, '28617unconditional surrender.jpg', 0, 'Unconditional Surrender:  Sailor and Nurse', 'Unconditional surrender, sailor, nurse, kiss, statue', 'Unconditional Surrender, the iconic WWII Navy Sailor and Nurse Kiss', '2019-02-12 02:16:02', '2019-02-12 02:16:02'),
(181, 2, 12, 'Small Archangel Michael', 'small-archangel-michael', '<p>Classic Archangel Michael statue in a small size &nbsp;4&quot; tall</p>', '11.99', NULL, NULL, '5.00', NULL, '68623ArchMichael.jpg', 0, 'Small Archangel Michael', 'archangel, michael, angel', 'Classic Archangel Michael statue in a small size  4\" tall', '2019-02-12 15:11:48', '2019-02-12 15:11:48'),
(182, 2, 12, 'Sm. Archangel Raphael', 'sm-archangel-raphael', '<p>Classic Archangel Raphael statue in a small size &nbsp;5&quot;</p>', '11.99', NULL, NULL, '5.00', NULL, '15072archraphaelsm.jpg', 0, 'Small Archangel Raphael Statue', 'archangel, angel, raphael', 'Classic Archangel Raphael statue in a small size  5\"', '2019-02-12 15:14:58', '2019-02-12 15:14:58'),
(183, 2, 12, 'Sm. Archangel Gabriel', 'sm-archangel-gabriel', '<p>Classic Archangel Gabriel statue in a small size &nbsp;5&quot;</p>', '11.99', NULL, NULL, '5.00', NULL, '12267archgabrielsm.jpg', 0, 'Small Archangel Gabriel', 'archangel, gabriel, angel', 'Classic Archangel Raphael statue in a small size  5\"', '2019-02-12 15:17:18', '2019-02-12 15:17:18'),
(184, 2, 11, 'Triple Moon Goddess', 'triple-moon-goddess', '<p>Triple Moon Goddess with pentacle and spiral &nbsp;8&quot; tall</p>', '24.95', NULL, NULL, '5.00', NULL, '69171spiralgoddess.jpg', 0, 'Triple Moon Goddess', 'goddess, pentacle, pagan, triple moon, spiral', 'Triple Moon Goddess with pentacle and spiral  8\" tall', '2019-02-12 15:21:58', '2019-02-12 15:21:58'),
(185, 2, 11, 'Wheel of The Year', 'wheel-of-the-year', '<p>Wheel of the Year plaque &nbsp;11&quot;</p>', '39.99', NULL, NULL, '7.00', NULL, '72340wheelofthe year.jpg', 0, 'Wheel of the Year', 'wheel of the year, pagan, sabbats', 'Wheel of the Year', '2019-02-12 15:25:07', '2019-02-12 15:25:07'),
(186, 9, 40, 'Six Coin Red Hanger', 'six-coin-red-hanger', '<p>Feng Shui Six Coin Red Hanger</p>\r\n\r\n<p>This Chinese hanger is a powerful money attractor to increase abundance, prosperity and good fortune. &nbsp; The number six represents wealth so having six coins strengthens your ability to attract and sustain wealth and prosperity.</p>\r\n\r\n<p>&nbsp;</p>', '5.99', NULL, NULL, '3.00', NULL, '834096coinredhanger.jpg', 0, 'Six Coin Red Hanger', 'chinese coin, red string, feng shui, prosperity', 'This Chinese hanger is ideal above or behind a desk or cash register, this wonderful hanger is bound to increase abundance, prosperity and good fortune. \r\n\r\nThe powerful money attractor contains six coins cascading down from a traditional Chinese knot, complete with a red tassel. \r\n\r\nThe number six represents wealth and money - thus having six cons tied together strengthens your ability to both attain and sustain prosperity.', '2019-02-12 15:31:02', '2019-02-12 15:31:02'),
(187, 3, 15, 'Mother Maiden and Crone Backflow Incense burner', 'mother-maiden-and-crone-backflow-incense-burner', '<p>Mother Maiden and Crone Backflow Incense Burner &nbsp;7&quot;</p>', '41.99', NULL, NULL, '7.00', NULL, '41203mothermaidencroneincense.jpg', 0, 'Mother Maiden and Crone Backflow Incense Burner', 'mother, maiden, crone, pagan, wiccan, incense', 'Mother Maiden and Crone Backflow Incense Burner  7\"', '2019-02-12 15:36:37', '2019-02-12 15:36:37'),
(188, 2, 11, 'Horned God', 'horned-god', '<p>Horned God Statue</p>', '61.00', NULL, NULL, '7.00', NULL, '88011hornedgod.jpg', 0, 'Horned God', 'Wicca, pagan, god, horned god, cernunnos', 'Horned God Statue', '2019-02-12 15:41:56', '2019-02-12 15:41:56'),
(189, 2, 11, 'Crescent Moon Goddess', 'crescent-moon-goddess', '<p>Crescent Moon Goddess</p>', '65.99', NULL, NULL, '7.00', 0, '94785Crescent goddess.jpg', 0, 'Crescent Moon Goddess', 'goddess, crescent moon, wicca, pagan', 'Crescent Moon Goddess', '2019-02-12 15:44:41', '2019-03-06 05:44:38'),
(190, 3, 15, 'Abalone Shell', 'abalone-shell', '<p>5-6&quot; Abalone shell &nbsp;</p>\r\n\r\n<p>Stand sold separately</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '14.99', NULL, NULL, '7.00', NULL, '99472abalone shell.jpg', 0, 'Abalone Shell', 'abalone, shell, smudge, smudging', '5-6\" abalone shell', '2019-02-12 16:03:19', '2019-02-12 16:03:19'),
(191, 3, 16, 'Large White Sage Smudge Stick', 'large-white-sage-smudge-stick', '<p><span style=\"font-family:amazon ember,arial,sans-serif; font-size:small\">These hand-tied smudge sticks are made from California White Sage. Discover the powerful smoke that Native American tribes have revered for thousands of years.</span></p>\r\n\r\n<p>Large bundle of California White Sage &nbsp;8-9&quot;</p>', '14.99', NULL, NULL, '3.00', NULL, '71371whitesagesmudge.jpg', 0, 'Large Smudge Stick', 'smudge, white sage, smudging, purify', 'These hand-tied smudge sticks are made from California White Sage. Discover the powerful smoke that Native American tribes have revered for thousands of years.', '2019-02-12 16:12:00', '2019-02-12 16:12:00'),
(192, 3, 14, 'Satya Sai Baba Nag Champa Incense', 'satya-sai-baba-nag-champa-incense', '<p>Satya Sai Baba Nag Champa Incense 15 g pack &nbsp;</p>\r\n\r\n<p><strong>Nag Champa</strong><span style=\"background-color:rgb(250, 250, 250); color:rgba(0, 0, 0, 0.670588); font-family:arial,helvetica,sans-serif; font-size:12px\">&nbsp;incense is perhaps the most recognizable incense in the world. It is commonly burned in religious temples and ashrams, yoga studios, gift shops, outdoor markets, and, of course, the homes of incense fans. Its sweet and earthy tones leave a lasting impression.</span></p>', '2.99', NULL, NULL, '5.00', NULL, '64620nagchampa.jpg', 0, 'Satya Sai Baba Nag Champa Incense 15 g pack', 'Nag Champa, incense', 'Satya Sai Baba Nag Champa Incense 15 g pack', '2019-02-12 16:23:50', '2019-02-12 16:23:50'),
(193, 2, 28, 'Need Coffee Fairy', 'need-coffee-fairy', '<p>Need Coffee Fairy by Amy Brown &nbsp;4 3/4&quot;</p>', '31.95', NULL, NULL, '7.00', NULL, '15966needcoffee.jpg', 0, 'Need Coffee Fairy', 'fairy, amy brown, coffee', 'Need Coffee Fairy by Amy Brown', '2019-02-12 16:29:29', '2019-02-12 16:29:29'),
(194, 2, 28, 'Relax Mermaid by Amy Brown', 'relax-mermaid-by-amy-brown', '<p>Relax Mermaid by Amy Brown &nbsp;4 3/4&quot;</p>', '31.95', NULL, NULL, '7.00', NULL, '20360relaxmermaid.jpg', 0, 'Relax Mermaid by Amy Brown', 'relax, mermaid, bath, cup, amy brown', 'Relax Mermaid by Amy Brown', '2019-02-12 16:31:17', '2019-02-12 16:31:17'),
(195, 2, 41, 'Yoga Frog', 'yoga-frog', '<p><span style=\"font-size:12px\"><span style=\"color:rgb(102, 102, 102); font-family:roboto,sans-serif\">Adorable meditating yoga frog garden decor suitable for indoor or outdoor &nbsp; 18&quot;</span></span></p>', '42.99', NULL, NULL, '12.00', 0, '38054yogafrog.jpg', 0, 'Yoga Frog', 'yoga, frog, meditating', 'Adorable meditating yoga frog garden decor suitable for indoor or outdoor', '2019-02-12 16:35:16', '2019-02-12 16:36:03'),
(196, 9, 40, 'Feng Shui Money Tree', 'feng-shui-money-tree', '<p>Feng Shui Money Tree&nbsp;&nbsp;5&quot;</p>', '29.99', NULL, NULL, '5.00', NULL, '98944fengshuitree.jpg', 0, 'Feng Shui Money Tree', 'feng shui, money, tree, coins', 'Feng Shui Money Tree', '2019-02-12 16:40:55', '2019-02-12 16:40:55'),
(197, 6, 31, 'Aventurine Gua Sha Tool', 'aventurine-gua-sha-tool', '<div class=\"short-description\" style=\"box-sizing: border-box; margin: 0px 0px 13px; padding: 0px; caret-color: rgb(188, 188, 188); color: rgb(188, 188, 188); font-family: Montserrat, sans-serif; font-size: 12px;\">\r\n<div class=\"std\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 15px; color: rgb(0, 0, 0);\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">A traditional form of Asian medicine that uses a soft natural stone surface to stimulate circulation. The curved stone is pulled gently, but firmly across the face. This act of &quot;effleurage&quot; or &quot;scraping&quot; is thought to stimulate circulation, release toxins and reduce puffiness. Pulling the stone across the face is a simple but effective movement. Many easy tutorials are available on You Tube. </span></span></div>\r\n\r\n<div class=\"std\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 15px; color: rgb(0, 0, 0);\">&nbsp;</div>\r\n\r\n<div class=\"std\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 15px; color: rgb(0, 0, 0);\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">Our version is made from genuine Aventurine&nbsp;and represents the traditional design - with contoured edges perfectly shaped to help promote oxygenated blood flow around the eyes , cheek and nose.</span></span></div>\r\n</div>', '17.99', NULL, NULL, '3.00', NULL, '86198guasha.jpg', 0, 'Green Aventurine Gua Sha', 'Aventurine, Gua Sha, chinese medicine, scraping', 'Green Aventurine Gua Sha tool', '2019-02-12 16:53:15', '2019-02-12 16:53:15'),
(198, 6, 31, 'Jade Massage Roller', 'jade-massage-roller', '<p><span style=\"color:rgb(0, 0, 0); font-family:montserrat,sans-serif; font-size:15px\">Our Jade Roller is an ancient health tool that relies on the natural benefits of jade to stimulate circulation in the face. The tool has been used for centuries in Asia. A gentle rolling motion works to reduce puffiness around the eyes, improve skin tone and tighten pores.</span><br />\r\n<br />\r\n&nbsp;</p>', '19.99', NULL, NULL, '5.00', NULL, '75996jaderoller.jpg', 0, 'Jade Massage Roller', 'jade, face, roller, massage', 'Our Jade Roller is an ancient health tool that relies on the natural benefits of jade to stimulate circulation in the face. The tool has been used for centuries in Asia. A gentle rolling motion works to reduce puffiness around the eyes, improve skin tone and tighten pores.', '2019-02-12 16:56:49', '2019-02-12 16:56:49'),
(199, 5, 18, 'Blue Agate Slice Windchime', 'blue-agate-slice-windchime', '<p>Blue Agate Slice Windchime</p>', '19.99', NULL, NULL, '5.00', NULL, '47413blueagateslicechime-2.jpg', 0, 'Blue Agate Slice Wind chime', 'agate, chime, wind chime', 'Blue Agate Slice Wind chime', '2019-02-13 01:27:15', '2019-02-13 01:27:15'),
(200, 5, 18, 'Natural Agate Slice Wind Chime', 'natural-agate-slice-wind-chime', '<p>Natural color agate slice wind chime. &nbsp;19&quot;</p>', '19.99', NULL, NULL, '5.00', NULL, '16810naturalagateslicechime-2.jpg', 0, 'Natural color agate slice wind chime.  19\"', 'agate, wind chime, chime, bell', 'Natural color agate slice wind chime.  19\"', '2019-02-13 01:29:19', '2019-02-13 01:29:19'),
(201, 2, 11, 'Odin Sitting on Throne with Freki and Geri', 'odin-sitting-on-throne-with-freki-and-geri', '<p><span style=\"color:rgb(80, 80, 80); font-family:roboto,arial,helvetica,sans-serif; font-size:14px\">Bronze Odin Sitting on Throne with his wolves Geri and Freki Sculpture. This sculpture is a finely crafted, highly detailed work of art from the Veronese collection. You will be very pleased with the quality of this amazing fantasy statue.</span><br />\r\n&nbsp;</p>', '107.00', NULL, NULL, '0.00', NULL, '37022veroneseodin.jpg', 0, 'Odin Sitting on Throne with Freki and Geri', 'Odin, wolves, Norse, Freki, Geri', 'Bronze Odin Sitting on Throne with his wolves Geri and Freki Sculpture. This sculpture is a finely crafted, highly detailed work of art from the Veronese collection. You will be very pleased with the quality of this amazing fantasy statue.', '2019-02-13 01:53:05', '2019-02-13 01:53:05'),
(202, 2, 11, 'Odin on Sleipnir Statue', 'odin-on-sleipnir-statue', '<p>Norse God Odin riding his 8 legged horse, Sleipnir&nbsp;sculpture. &nbsp;<span style=\"font-size:12px\"><span style=\"color:rgb(80, 80, 80); font-family:roboto,arial,helvetica,sans-serif\">This sculpture is a finely crafted, highly detailed work of art from the Veronese collection. You will be very pleased with the quality of this amazing statue.</span></span></p>', '105.00', NULL, NULL, '0.00', NULL, '11338odinonsleipnirunicorn.jpg', 0, 'Odin on Sleipnir Statue', 'norse, odin, statue, horse, sleipnir', 'Norse God Odin riding his 8 legged horse,  Sleipnir', '2019-02-13 01:59:48', '2019-02-13 01:59:48'),
(203, 4, 24, 'Steampunk Heart Box', 'steampunk-heart-box', '<p><span style=\"color:rgb(80, 80, 80); font-family:roboto,arial,helvetica,sans-serif; font-size:14px\">Bronze Steampunk Heart Trinket Box by Myles Pinkney. This trinket box is a finely crafted, highly detailed work of art from the Veronese Collection.&nbsp;</span></p>', '44.99', NULL, NULL, '5.00', NULL, '43983unicornstudiocrimson-steampunk-heart-box-3.jpg', 0, 'Steampunk Heart Trinket Box', 'steampunk, heart, trinket, box', 'Bronze Steampunk Heart Trinket Box by Myles Pinkney. This trinket box is a finely crafted, highly detailed work of art from the Veronese Collection.', '2019-02-13 02:11:44', '2019-02-13 02:11:44'),
(204, 2, 28, '11\" Bronze Merman Statue', '11-bronze-merman-statue', '<p><span style=\"color:rgb(80, 80, 80); font-family:roboto,arial,helvetica,sans-serif; font-size:14px\">Bronze Merman Stretching on a Rock Fantasy Sculpture. This sculpture is a finely crafted, highly detailed work of art from the Veronese collection.</span></p>\r\n\r\n<p><span style=\"color:rgb(80, 80, 80); font-family:roboto,arial,helvetica,sans-serif; font-size:14px\">11&quot;</span></p>', '89.99', NULL, NULL, '5.00', 1, '69779stretching-merman-figurine-3.jpg', 0, '11\" Bronze Merman Statue', 'merman, statue, male mermaid', 'Bronze Merman Stretching on a Rock Fantasy Sculpture. This sculpture is a finely crafted, highly detailed work of art from the Veronese collection.', '2019-02-13 02:15:14', '2019-02-13 02:15:14'),
(205, 2, 2, 'Buddha on Elephant', 'buddha-on-elephant', '<p>Samantabhadra, &quot;Universal Knowledge and Bounty&quot; &nbsp;represents compasssion and the law of the Buddha. &nbsp;Blanc de Chine porcelain seated on an elephant making a gesture of explanation. &nbsp; 11&quot; x 13 1/2&quot; &nbsp; Comes in silk gift box</p>', '329.99', NULL, NULL, '0.00', NULL, '43837IMG_0245.JPG', 0, 'Buddha on Elephant', 'buddha statue, elephant, buddha, samantabhadra', 'Samantabhadra, \"Universal Knowledge and Bounty\"  represents compasssion and the law of the Buddha.  Blanc de Chine porcelain seated on an elephant making a gesture of explanation.   11\" x 13 1/2\"   Comes in silk gift box', '2019-02-15 00:19:19', '2019-02-15 00:19:19'),
(206, 3, 14, 'Sandalwood Tibetan Rope Incense', 'sandalwood-tibetan-rope-incense', '<ul>\r\n	<li>\r\n	<p>Himalayan rope incense where raw incense powder is twisted into ropes of handmade paper. Made with all natural ingredients, the aroma of this sandalwood rope incense is described as woody and slightly sweet.</p>\r\n\r\n	<ul>\r\n		<li>approximately 20 twisted rope strands</li>\r\n		<li>contains various Himalayan herbs including sandalwood</li>\r\n		<li>all natural with no wooden sticks, glues, or dyes</li>\r\n		<li>handmade in Nepal</li>\r\n	</ul>\r\n	</li>\r\n</ul>', '5.99', NULL, NULL, '1.00', NULL, '63598tibetanropeincense.jpg', 0, 'Sandalwood Tibetan Rope Incense', 'incense, tibetan, himalayan, sandalwood', 'Himalayan rope incense where raw incense powder is twisted into ropes of handmade paper. Made with all natural ingredients, the aroma of this sandalwood rope incense is described as woody and slightly sweet.', '2019-02-15 07:45:53', '2019-02-15 07:45:53'),
(207, 3, 14, 'Healing Tibetan Rope Incense', 'healing-tibetan-rope-incense', '<p>A traditional form of incense in Tibet and Nepal which is formed from incense powder blended and bound to rice paper, then rolled and braided. &nbsp; This healing scent provides a refreshing and calming scent that can help cleanse a space before rituals and meditation.</p>\r\n\r\n<p>&nbsp;</p>', '5.99', NULL, NULL, '1.00', NULL, '75579healingtibetanincense.jpg', 0, 'Healing Tibetan Rope Incense', 'Tibetan, incense, rope, healing', 'A traditional form of incense in Tibet and Nepal which is formed from incense powder blended and bound to rice paper, then rolled and braided.   This healing scent provides a refreshing and calming scent that can help cleanse a space before rituals and meditation.', '2019-02-15 07:53:35', '2019-02-15 07:53:35'),
(208, 3, 14, 'Herb and Earth Incense Lavender', 'herb-and-earth-incense-lavender', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"margin: 0px; padding: 0px; border: 0px;\">The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space. Chamomile is used to soothe the nerves and to easy stress and restlessness. Incense burns for approximately 30 minutes.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '3.95', NULL, NULL, '2.00', NULL, '7950772734.jpg', 0, 'Herb and Earth Incense Lavender', 'herb and earth, incense, lavender, low smoke', 'The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space. Chamomile is used to soothe the nerves and to easy stress and restlessness. Incense burns for approximately 30 minutes.', '2019-02-15 08:10:44', '2019-02-15 08:10:44'),
(209, 3, 14, 'Herb and Earth Vanilla Incense', 'herb-and-earth-vanilla-incense', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"margin: 0px; padding: 0px; border: 0px;\">The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '3.99', NULL, NULL, '2.00', NULL, '7683572745.jpg', 0, 'Herb and Earth Incense Vanilla', 'herb and earth, incense, vanilla', 'The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.  Incense burns for approximately 30 minutes.', '2019-02-15 08:17:03', '2019-02-15 08:17:03'),
(210, 3, 14, 'Herb and Earth Incense Rose', 'herb-and-earth-incense-rose', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"margin: 0px; padding: 0px; border: 0px;\">The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '3.99', NULL, NULL, '2.00', NULL, '6678372735.jpg', 0, 'Herb and Earth Incense Rose', 'herb and earth, incense, rose, low smoke', 'The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.', '2019-02-15 08:20:08', '2019-02-15 08:20:08'),
(211, 3, 14, 'Herb and Earth Incense Chamomile', 'herb-and-earth-incense-chamomile', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"margin: 0px; padding: 0px; border: 0px;\">The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space. Chamomile is used to soothe the nerves and to easy stress and restlessness. Incense burns for approximately 30 minutes.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '3.99', NULL, NULL, '2.00', NULL, '9891772742.jpg', 0, 'Herb and Earth Incense Chamomile', 'chamomile, herb and earth, incense, low smoke', 'The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space. Chamomile is used to soothe the nerves and to easy stress and restlessness. Incense burns for approximately 30 minutes.', '2019-02-15 08:22:49', '2019-02-15 08:22:49'),
(212, 3, 14, 'Herb and Earth Incense Patchouli', 'herb-and-earth-incense-patchouli', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"margin: 0px; padding: 0px; border: 0px;\">The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '3.99', NULL, NULL, '2.00', NULL, '3151272744.jpg', 0, 'Herb and Earth Incense Patchouli', 'herb and earth, incense, patchouli, low smoke', 'The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.', '2019-02-15 08:25:33', '2019-02-15 08:25:33'),
(213, 3, 14, 'Herb and Earth Frankincense', 'herb-and-earth-frankincense', '<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<div style=\"margin: 0px; padding: 0px; border: 0px;\">The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"4\" style=\"border:0px; caret-color:rgb(99, 98, 153); color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px; margin:0px; padding:0px; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '3.99', NULL, NULL, '2.00', NULL, '2153172746.jpg', 0, 'Herb and Earth Frankincense', 'herb and earth, frankincense, low smoke, incense', 'The highest quality Bamboo incense stick with less smoke. Add a touch of pure fragrance to your home, office or special space.', '2019-02-15 08:29:54', '2019-02-15 08:29:54'),
(214, 3, 15, 'Ceramic Tibetan Rope Incense Burner', 'ceramic-tibetan-rope-incense-burner', '<p><span style=\"color:rgb(99, 98, 153); font-family:arial,helvetica,sans-serif; font-size:12px\">Ceramic burner, hand made in Nepal to burn the rope incense</span></p>', '9.99', NULL, NULL, '3.00', NULL, '6859489455.jpg', 0, 'Ceramic Tibetan Rope Incense Burner', 'tibetan, rope, incense, ceramic, burner', 'Ceramic Tibetan Rope Incense Burner made in Nepal', '2019-02-15 08:36:45', '2019-02-15 08:36:45'),
(215, 7, 43, 'Tibetan Prayer Flags', 'tibetan-prayer-flags', '<p>Prayer flags 10 6 x 7 &nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:helvetica,arial; font-size:12px\">A prayer flag is a colorful rectangular cloth, often found strung along mountain ridges and peaks high in the Himalayas. They are used to bless the surrounding country side and for other purposes. Prayer flags are believed to have originated with Bon, which predated Buddhism in Tibet.</span></p>', '9.99', NULL, NULL, '5.00', NULL, '33495prayerflag.jpg', 0, 'Tibetan Prayer Flags', 'prayer flags, flag, tibetan', 'Tibetan prayer flag.  A prayer flag is a colorful rectangular cloth, often found strung along mountain ridges and peaks high in the Himalayas. They are used to bless the surrounding country side and for other purposes. Prayer flags are believed to have originated with Bon, which predated Buddhism in Tibet.', '2019-02-15 09:05:48', '2019-02-15 09:05:48'),
(216, 3, 15, 'Chakra Art Glass Incense Burner', 'chakra-art-glass-incense-burner', '<p>Black swirl art glass incense ash catcher with seven chakra triangles.</p>', '14.99', NULL, NULL, '3.00', NULL, '3126987221.jpg', 0, 'Black Art Glass Incense Burner with Seven Chakra Triangles', 'incense, burner, chakra', 'Black swirl art glass incense ash catcher with seven chakra triangles.', '2019-02-15 23:11:53', '2019-02-15 23:11:53'),
(217, 6, 49, 'Rose Quartz Yoni Eggs Set of 3', 'rose-quartz-yoni-eggs-set-of-3', '<p>Set of three beautiful Rose Quartz Yoni Eggs in three sizes. &nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:filson-soft,helvetica,arial,lucida,sans-serif; font-size:12px\">Yoni eggs are beautiful semiprecious stones carved into an eggshape and polished to be worn inside the vagine. &nbsp;</span><span style=\"color:rgb(0, 0, 0); font-family:filson-soft,helvetica,arial,lucida,sans-serif; font-size:12px\">It is estimated that women have been practicing with stone eggs for over 5,000 years. Empresses and concubines of the Royal Palace of China used eggs carved out of jade to&nbsp;access sexual power, awaken sensuality&nbsp;and maintain&nbsp;amazing health&nbsp;into their old age. Up until recently, this ancient, secret practice was only available to members of the royal family, and to select Taoist practitioners.</span></p>', '49.99', NULL, NULL, '5.00', 0, '4669065013.jpg', 0, 'Rose Quartz Yoni Eggs Set of 3', 'yoni, egg, rose quartz,', 'Rose Quartz Yoni Eggs Set of 3', '2019-02-15 23:19:37', '2019-03-09 00:42:51'),
(218, 2, 17, 'Vitruvian Man', 'vitruvian-man', '<p><span style=\"font-family:amazon ember,arial,sans-serif; font-size:small\">he `Vitruvian Man`, one of the most well known drawings by Leonardo Da Vinci, depicts two male figures superimposed in two positions with his arms and legs apart inside a circle and a square. He drew this as a study in human proportion. This cold cast resin statue features expertly sculpted details and a beautiful bronze finish that looks just like metal that would take center stage in any room it`s displayed at 8 1/2 inches high, 8 5/8 inches long and 1 1/2 inches wide. Display this statue on a rotating base to fully appreciate this piece from every angle. It also has a felted bottom to help prevent scratching delicate surfaces and would make a wonderful gift!</span></p>', '54.99', NULL, NULL, '5.00', NULL, '71790vitruvian man.jpg', 0, 'Vitruvian Man', 'Vitruvian, Leonardo, DaVinci, Man, statue', 'he `Vitruvian Man`, one of the most well known drawings by Leonardo Da Vinci, depicts two male figures superimposed in two positions with his arms and legs apart inside a circle and a square. He drew this as a study in human proportion. This cold cast resin statue features expertly sculpted details and a beautiful bronze finish that looks just like metal that would take center stage in any room', '2019-02-18 00:33:08', '2019-02-18 00:33:08'),
(219, 2, 29, 'Lunch With a Toothpick Dragon', 'lunch-with-a-toothpick-dragon', '<p>This dragon enjoyed his lunch and now uses the knight&#39;s sword as a toothpick. &nbsp;Whimsical and fun for dragon lovers! &nbsp;Statue by Ed Beard Jr.&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(178, 34, 34)\">Ships Free!&nbsp;</span>&nbsp;&nbsp;Normally within 2-4 business days</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '89.99', NULL, NULL, '0.00', 0, '61889lunch-with-a-toothpick-figurine-4.jpg', 0, 'Lunch with a Toothpick Dragon Statue', 'Dragon, toothpick, sword, Ed Beard', 'Lunch with a Toothpick Dragon figurine by Ed Beard, Jr.', '2019-02-18 00:38:44', '2019-02-18 00:56:04');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `price`, `discount`, `discount_price`, `shipping_price`, `best_seller`, `image`, `prd_cs_opt`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(220, 2, 41, 'A Brush With Magick', 'a-brush-with-magick', '<p><span style=\"color:rgb(65, 68, 72); font-family:arial; font-size:12px\">A Brush with Magick Figurine</span><br />\r\n<br />\r\n<span style=\"color:rgb(65, 68, 72); font-family:arial; font-size:12px\">This adorably magical figurine features a black cat and a witch&#39;s broom! The green-eyed feline rubs up against the broom, tail raised high and with that oh-so-typical half-squinting kitty look. A pentacle charm dangles from the broom. Lisa Parker&#39;s artwork has made for another fantastic statue!</span><br />\r\n11&quot; high &nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(178, 34, 34)\">Ships Free!&nbsp;</span>&nbsp;&nbsp;Normally within 2-4 business days</p>', '89.99', NULL, NULL, '0.00', 0, '267598999Brushwith magick.jpg', 0, 'A Brush With Magick cat statue', 'cat, brush with magic, statue, broom,', 'A Brush with Magick Figurine\r\n\r\nThis adorably magical figurine features a black cat and a witch\'s broom! The green-eyed feline rubs up against the broom, tail raised high and with that oh-so-typical half-squinting kitty look. A pentacle charm dangles from the broom. Lisa Parker\'s artwork has made for another fantastic statue!', '2019-02-18 00:42:33', '2019-02-18 00:55:41'),
(221, 2, 41, 'Steampunk Stiletto', 'steampunk-stiletto', '<p>Steampunk Stiletto gives a whole new meaning to the &quot;Old Woman Who Lived in A Shoe&quot; &nbsp; 10 1/2&quot; high &nbsp;</p>\r\n\r\n<p><span style=\"color:#B22222\">Ships Free! </span>&nbsp;&nbsp;Normally within 2-4 business days</p>\r\n\r\n<p>&nbsp;</p>', '89.99', NULL, NULL, '0.00', 0, '35909steampunkstilettoironopolis.jpg', 0, 'Steampunk Stiletto', 'steampunk, stiletto, shoe, ironopolis', 'Steampunk Stiletto gives a whole new meaning to the \"Old Woman Who Lived in A Shoe\"   10 1/2\" high', '2019-02-18 00:52:45', '2019-02-18 00:54:40'),
(222, 2, 11, 'Diana With Deer', 'diana-with-deer', '<p>Diana with Deer Statue</p>\r\n\r\n<p><span style=\"color:rgb(178, 34, 34)\">Ships Free!&nbsp;</span>&nbsp;&nbsp;Normally within 2-4 business days</p>', '85.99', NULL, NULL, '0.00', NULL, '39185dianawithdeer.jpg', 0, 'Goddess Diana with Deer', 'Goddess, Diana, Deer, statue', 'Goddess Diana with Deer Statue', '2019-02-18 00:58:08', '2019-02-18 00:58:08'),
(223, 2, 11, 'Hecate Triple Goddess, Maiden Mother and Crone', 'hecate-triple-goddess-maiden-mother-and-crone', '<p>Hecate Triple Goddess Statue &nbsp;Maiden Mother Crone.&nbsp;<span style=\"color:rgba(0, 0, 0, 0.870588); font-family:roboto,helvetica-neue,sans-serif; font-size:14px\">In Greek religion and mythology, Hecate is a goddess associated with the moon, magic, witchcraft, necromancy and sorcery, and most often is holding two torches or a key. This wonderfully detailed bronze finish cast resin statue features Hecate in triple form, holding torches, a key, a dagger and a serpent. It&#39;s amazingly detailed at 11 3/4 inches high, 7 inches long and 7 inches wide with colored accents, and is a must-have piece to start or add to your collection of mythology art.</span></p>\r\n\r\n<p><span style=\"color:rgb(178, 34, 34)\">Ships Free!&nbsp;</span>&nbsp;&nbsp;Normally within 2-4 business days</p>', '89.99', NULL, NULL, '0.00', NULL, '17685hecate.jpg', 0, 'Hecate, Maiden Mother Crone Triple Goddess Statue', 'Hecate, Triple goddess, maiden, mother, crone, wicca, pagan, statue', 'In Greek religion and mythology, Hecate is a goddess associated with the moon, magic, witchcraft, necromancy and sorcery, and most often is holding two torches or a key. This wonderfully detailed bronze finish cast resin statue features Hecate in triple form, holding torches, a key, a dagger and a serpent. It\'s amazingly detailed at 11 3/4 inches high, 7 inches long and 7 inches wide with colored accents, and is a must-have piece to start or add to your collection of mythology art.', '2019-02-18 01:05:20', '2019-02-18 01:05:20'),
(224, 2, 41, 'St. Joseph Home Seller Kit', 'st-joseph-home-seller-kit', '<p><span style=\"font-family:arial; font-size:13.333333015441895px\">Selling a home or know someone who needs a little help? Ask St. Joseph! He&#39;s helped thousands! This best-selling home sale kit includes</span><span style=\"font-family:arial; font-size:13.333333015441895px\">&nbsp;one</span><span style=\"font-family:arial; font-size:13.333333015441895px\">&nbsp;3.5&quot; plastic statue</span><span style=\"font-family:arial; font-size:13.333333015441895px\">&nbsp;and laminated prayer card for prayer as he&#39;s buried in your yard. For centuries people have prayed to St. Joseph for his help. In more recent times it has become common practice to bury a St. Joseph statue to help sell your home.</span></p>', '14.99', NULL, NULL, '5.00', 1, '42520st joseph home seller kit.jpg', 0, 'St Joseph Home Seller Kit', 'Saint, Joseph, Home Seller, Sell your house', 'elling a home or know someone who needs a little help? Ask St. Joseph! He\'s helped thousands! This best-selling home sale kit includes one 3.5\" plastic statue and laminated prayer card for prayer as he\'s buried in your yard. For centuries people have prayed to St. Joseph for his help. In more recent times it has become common practice to bury a St. Joseph statue to help sell your home.', '2019-02-18 01:16:51', '2019-02-18 01:16:51'),
(225, 2, 12, 'Saint Joseph Home Seller Kit', 'saint-joseph-home-seller-kit', '<p><span style=\"font-family:arial; font-size:13.333333015441895px\">Selling a home or know someone who needs a little help? Ask St. Joseph! He&#39;s helped thousands! This best-selling home sale kit includes</span><span style=\"font-family:arial; font-size:13.333333015441895px\">&nbsp;one</span><span style=\"font-family:arial; font-size:13.333333015441895px\">&nbsp;3.5&quot; plastic statue</span><span style=\"font-family:arial; font-size:13.333333015441895px\">&nbsp;and laminated prayer card for prayer as he&#39;s buried in your yard. For centuries people have prayed to St. Joseph for his help. In more recent times it has become common practice to bury a St. Joseph statue to help sell your home.</span></p>', '14.99', NULL, NULL, '5.00', NULL, '57509st joseph home seller kit.jpg', 0, 'Saint Joseph Home Seller Kit', 'Saint, Joseph, Sell home, sell house, home seller', 'Selling a home or know someone who needs a little help? Ask St. Joseph! He\'s helped thousands! This best-selling home sale kit includes one 3.5\" plastic statue and laminated prayer card for prayer as he\'s buried in your yard. For centuries people have prayed to St. Joseph for his help. In more recent times it has become common practice to bury a St. Joseph statue to help sell your home.', '2019-02-18 01:18:36', '2019-02-18 01:18:36'),
(226, 2, 2, 'Large Ganesha Statue', 'large-ganesha-statue', '<p><strong>Very Large Ganesha Statue&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">EXQUISITE CRAFTSMANSHIP - Premium sculpted cold cast bronze by master sculptors- real bronze powder mixed with resin. Hand-painted in bronze finish with color accents to give a high-quality look without sacrificing the details.</span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">REGAL REPRESENTATION - Large statue of Ganesh (Ganesha) on a lotus pedestal. See description for explanation of what he symbolizes.</span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">IMPRESSIVE SIZE - Measures 25.25 inches (a little over 2 feet) tall. W: 17 by D: 16 inches. Amazing centerpiece to any decor at home or in the office.<span style=\"color:rgb(17, 17, 17)\">.</span></span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">REMOVER OF OBSTACLES - Ganesha serves as a protector to bring success and prosperity into your life by helping to remove difficult obstacles.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#FF0000\"><span style=\"caret-color:rgb(17, 17, 17)\">Ships Free! </span></span><font color=\"#111111\"><span style=\"caret-color:rgb(17, 17, 17)\">&nbsp; Please allow 2-3 weeks for delivery</span></font></p>', '499.99', NULL, NULL, '0.00', NULL, '23132largeganesha.jpg', 0, 'Large Ganesha Statue', 'Ganesha, statue, destroyer of obstacles', 'LARGE GANESHA STATUE.\r\nPremium sculpted cold cast bronze by master sculptors- real bronze powder mixed with resin. Hand-painted in bronze finish with color accents to give a high-quality look .\r\n\r\n\r\nREMOVER OF OBSTACLES - Ganesha serves as a protector to bring success and prosperity into your life by helping to remove difficult obstacles.', '2019-02-18 01:30:59', '2019-02-18 01:30:59'),
(227, 1, 44, 'Rose Quartz and Amber Teething Necklace', 'rose-quartz-and-amber-teething-necklace', '<p>Rose Quartz and genuine amber bead teething necklace. &nbsp;Used for pain relief, teething, drooling and fussiness. &nbsp;</p>\r\n\r\n<p><strong>Amber</strong>&nbsp;should be worn on the skin.&nbsp;<strong>Amber teething necklaces</strong>&nbsp;relieve the pain of teething when the necklace lays against the skin during the day. Baby necklace is not for chewing or wearing at night.</p>\r\n\r\n<p>Carefully place the&nbsp;<strong>teething necklace</strong>&nbsp;and fasten. We recommend to wear the necklace or bracelet under clothing to keep skin contact with teething jewelry more effective .</p>\r\n\r\n<p><strong>Product details:</strong><br />\r\nInfant teething necklaces are made for both baby boys and baby girls.<br />\r\nThe approximate length of amber baby necklaces is 11.5-12 inches or 30-32 centimiters.<br />\r\n<strong>Baltic amber teething necklaces</strong>&nbsp;and bracelets are knotted between each bead, if the teething amber jewelry would break (if necessary), all of the beads will not be scattered.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '22.99', NULL, NULL, '3.00', 0, '16225rosequartzamberteething.jpg', 0, 'Rose Quartz and Amber Teething Necklace', 'amber, teething, baby necklace, rose quartz', 'Rose Quartz and genuine amber bead teething necklace.  Used for pain relief, teething, drooling and fussiness.', '2019-02-18 02:47:23', '2019-02-18 02:51:39'),
(228, 1, 44, 'Amethyst and Amber Bead Teething Necklace', 'amethyst-and-amber-bead-teething-necklace', '<p>Amethyst and genuine amber bead teething necklace. &nbsp;Used for pain relief, teething, drooling and fussiness. &nbsp;</p>\r\n\r\n<p><strong>Amber</strong>&nbsp;should be worn on the skin.&nbsp;<strong>Amber teething necklaces</strong>&nbsp;relieve the pain of teething when the necklace lays against the skin during the day. Baby necklace is not for chewing or wearing at night.</p>\r\n\r\n<p>Carefully place the&nbsp;<strong>teething necklace</strong>&nbsp;and fasten. We recommend to wear the necklace or bracelet under clothing to keep skin contact with teething jewelry more effective .</p>\r\n\r\n<p><strong>Product details:</strong><br />\r\nInfant teething necklaces are made for both baby boys and baby girls.<br />\r\nThe approximate length of amber baby necklaces is 11.5-12 inches or 30-32 centimiters.<br />\r\n<strong>Baltic amber teething necklaces</strong>&nbsp;and bracelets are knotted between each bead, if the teething amber jewelry would break (if necessary), all of the beads will not be scattered.</p>\r\n\r\n<p>&nbsp;</p>', '22.99', NULL, NULL, '3.00', NULL, '95506amber-teething-necklace-withamethyst.jpg', 0, 'Amethyst and Amber Teething Necklace', 'amethyst, amber, teething, necklace, baby necklace', 'Amethyst and genuine amber bead teething necklace.  Used for pain relief, teething, drooling and fussiness.', '2019-02-18 02:51:24', '2019-02-18 02:51:24'),
(229, 1, 44, 'Genuine Amber Teething Necklace 029', 'genuine-amber-teething-necklace-029', '<p>Genuine amber bead teething necklace. &nbsp;Used for pain relief, teething, drooling and fussiness. &nbsp;</p>\r\n\r\n<p><strong>Amber</strong>&nbsp;should be worn on the skin.&nbsp;<strong>Amber teething necklaces</strong>&nbsp;relieve the pain of teething when the necklace lays against the skin during the day. Baby necklace is not for chewing or wearing at night.</p>\r\n\r\n<p>Carefully place the&nbsp;<strong>teething necklace</strong>&nbsp;and fasten. We recommend to wear the necklace or bracelet under clothing to keep skin contact with teething jewelry more effective .</p>\r\n\r\n<p><strong>Product details:</strong><br />\r\nInfant teething necklaces are made for both baby boys and baby girls.<br />\r\nThe approximate length of amber baby necklaces is 11.5-12 inches or 30-32 centimiters.<br />\r\n<strong>Baltic amber teething necklaces</strong>&nbsp;and bracelets are knotted between each bead, if the teething amber jewelry would break (if necessary), all of the beads will not be scattered.</p>', '22.99', NULL, NULL, '3.00', 1, '51668wholesale-amber-teething-necklace-29.jpg', 0, 'Genuine Amber Teething Necklace', 'genuine amber, certified amber, amber, teething, baby necklace, necklace', 'Genuine amber bead teething necklace.  Used for pain relief, teething, drooling and fussiness.', '2019-02-18 03:00:20', '2019-02-18 03:00:20'),
(230, 1, 44, 'Genuine Amber Teething Necklace Dark color', 'genuine-amber-teething-necklace-dark-color', '<p>Dark color genuine amber bead teething necklace. &nbsp;Used for pain relief, teething, drooling and fussiness. &nbsp;</p>\r\n\r\n<p><strong>Amber</strong>&nbsp;should be worn on the skin.&nbsp;<strong>Amber teething necklaces</strong>&nbsp;relieve the pain of teething when the necklace lays against the skin during the day. Baby necklace is not for chewing or wearing at night.</p>\r\n\r\n<p>Carefully place the&nbsp;<strong>teething necklace</strong>&nbsp;and fasten. We recommend to wear the necklace or bracelet under clothing to keep skin contact with teething jewelry more effective .</p>\r\n\r\n<p><strong>Product details:</strong><br />\r\nInfant teething necklaces are made for both baby boys and baby girls.<br />\r\nThe approximate length of amber baby necklaces is 11.5-12 inches or 30-32 centimiters.<br />\r\n<strong>Baltic amber teething necklaces</strong>&nbsp;and bracelets are knotted between each bead, if the teething amber jewelry would break (if necessary), all of the beads will not be scattered.</p>', '22.99', NULL, NULL, '3.00', NULL, '15142darkamberteething.jpg', 0, 'Dark Color Genuine Amber Teething Necklace', 'amber, teething, genuine, baby', 'Dark color genuine amber bead teething necklace.  Used for pain relief, teething, drooling and fussiness.', '2019-02-18 03:02:50', '2019-02-18 03:02:50'),
(231, 1, 44, 'Multi-color Genuine Amber Teething Necklace', 'multi-color-genuine-amber-teething-necklace', '<p>Multi-color&nbsp;genuine amber bead teething necklace. &nbsp;Used for pain relief, teething, drooling and fussiness. &nbsp;</p>\r\n\r\n<p><strong>Amber</strong>&nbsp;should be worn on the skin.&nbsp;<strong>Amber teething necklaces</strong>&nbsp;relieve the pain of teething when the necklace lays against the skin during the day. Baby necklace is not for chewing or wearing at night.</p>\r\n\r\n<p>Carefully place the&nbsp;<strong>teething necklace</strong>&nbsp;and fasten. We recommend to wear the necklace or bracelet under clothing to keep skin contact with teething jewelry more effective .</p>\r\n\r\n<p><strong>Product details:</strong><br />\r\nInfant teething necklaces are made for both baby boys and baby girls.<br />\r\nThe approximate length of amber baby necklaces is 11.5-12 inches or 30-32 centimiters.<br />\r\n<strong>Baltic amber teething necklaces</strong>&nbsp;and bracelets are knotted between each bead, if the teething amber jewelry would break (if necessary), all of the beads will not be scattered.</p>', '22.99', NULL, NULL, '3.00', NULL, '39809multiamberteething.jpg', 0, 'Multi-color genuine amber bead teething necklace.', 'amber, genuine, certified, teething, baby, necklace', 'Multi-color genuine amber bead teething necklace.  Used for pain relief, teething, drooling and fussiness.', '2019-02-18 03:07:44', '2019-02-18 03:07:44'),
(232, 1, 7, 'Petite Evil Eye Pendant', 'petite-evil-eye-pendant', '<p>Petite Evil Eye pendant &nbsp;8 mm Sterling Silver with glass bead. &nbsp; Chain included. &nbsp;</p>\r\n\r\n<p>The belief in the Evil Eye dates back almost 3000 years to Ancient Greece and Rome. &nbsp;It is one of the strongest symbolic images in the world. &nbsp; Wearing an Evil Eye as an amulet is believed to provide protection against evil forces. &nbsp;The Evil Eye has symbolism in almost every country in the world and almost every religion including Judaism, Islam, Hindu, Buddhism and Christianity.</p>', '14.99', NULL, NULL, '3.00', 0, '64265evil eyependant.jpg', 0, 'Petite Evil Eye Necklace', 'evil eye, protection, necklace', 'Petite Evil Eye pendant  8 mm Sterling Silver with glass bead.   Chain included.  \r\n Wearing an Evil Eye as an amulet is believed to provide protection against evil forces.', '2019-02-18 23:37:01', '2019-03-12 01:44:33'),
(233, 1, 7, 'Gold Plated Evil Eye with Nano Turquoise, Amethyst and CZ', 'gold-plated-evil-eye-with-nano-turquoise-amethyst-and-cz', '<p>Sterling Silver Trendy Yellow Gold Plated Nano Turquoise, Amethyst, &amp; Cubic Zirconia Evil eye with CZ Stones Necklace, Width 21 mm &nbsp;</p>\r\n\r\n<p><span style=\"font-family:verdana,geneva,sans-serif; font-size:12px\">The belief in the Evil Eye dates back almost 3000 years to Ancient Greece and Rome. &nbsp;It is one of the strongest symbolic images in the world. &nbsp; Wearing an Evil Eye as an amulet is believed to provide protection against evil forces. &nbsp;The Evil Eye has symbolism in almost every country in the world and almost every religion including Judaism, Islam, Hindu, Buddhism and Christianity.</span></p>', '45.00', NULL, NULL, '3.00', 1, '92395largeevileye.jpg', 0, 'Gold Plated Evil Eye Necklace', 'evil eye, protection, gold, turquoise, sterling silver, 925', 'Gold plated Sterling Silver Evil Eye Necklace', '2019-02-18 23:49:42', '2019-02-18 23:49:42'),
(234, 1, 7, 'Evil Eye Sterling Silver Pendant with chain', 'evil-eye-sterling-silver-pendant-with-chain', '<p>18 mm Evil eye Sterling Silver with glass bead pendant. &nbsp; Chain included.</p>\r\n\r\n<p><span style=\"font-family:verdana,geneva,sans-serif; font-size:12px\">The belief in the Evil Eye dates back almost 3000 years to Ancient Greece and Rome. &nbsp;It is one of the strongest symbolic images in the world. &nbsp; Wearing an Evil Eye as an amulet is believed to provide protection against evil forces. &nbsp;The Evil Eye has symbolism in almost every country in the world and almost every religion including Judaism, Islam, Hindu, Buddhism and Christianity.</span></p>\r\n\r\n<p>&nbsp;</p>', '27.99', NULL, NULL, '3.00', 0, '62930evileyependant2.jpg', 0, 'Medium Evil Eye Sterling Silver Pendant with chain', 'Evil Eye, protection, sterling, necklace', '16 mm Evil Eye glass bead in Sterling Silver pendant with chain.', '2019-02-18 23:55:11', '2019-03-12 01:43:31'),
(235, 1, 7, 'Heart Shaped Sterling Silver Evil Eye Necklace', 'heart-shaped-sterling-silver-evil-eye-necklace', '<p>Sterling Silver heart shaped evil eye necklace. &nbsp;&nbsp;</p>\r\n\r\n<p><span style=\"font-family:verdana,geneva,sans-serif; font-size:12px\">The belief in the Evil Eye dates back almost 3000 years to Ancient Greece and Rome. &nbsp;It is one of the strongest symbolic images in the world. &nbsp; Wearing an Evil Eye as an amulet is believed to provide protection against evil forces. &nbsp;The Evil Eye has symbolism in almost every country in the world and almost every religion including Judaism, Islam, Hindu, Buddhism and Christianity.</span></p>\r\n\r\n<div>&nbsp;</div>', '33.00', NULL, NULL, '3.00', NULL, '94549heartevileye.jpg', 0, 'Small heart shaped evil eye necklace', 'heart, evil eye, protection, small evil eye, dainty', 'Small heart shaped evil eye necklace', '2019-02-19 00:09:21', '2019-02-19 00:09:21'),
(236, 8, 38, 'Rose Quartz Rune Set', 'rose-quartz-rune-set', '<p>Rose Quartz Rune Set</p>', '24.95', NULL, NULL, '5.00', NULL, '63532Rune-001-Rose-Quartz-Rune-Set.jpg', 0, 'Rose Quartz Rune Set', 'divination, runes, rose quartz, fortune telling', 'Rose Quartz Rune set', '2019-02-19 00:39:18', '2019-02-19 00:39:18'),
(237, 8, 38, 'Indian Amethyst Rune Set', 'indian-amethyst-rune-set', '<p>Indian Amethyst Rune Set</p>', '24.95', NULL, NULL, '5.00', NULL, '90499Rune-020-Indian-Amethyst-Rune-Stone-Set.jpg', 0, 'Indian Amethyst Rune Set', 'Amethyst, Runes, asatru, norse', 'Indian Amethyst Rune Set', '2019-02-19 00:41:03', '2019-02-19 00:41:03'),
(238, 8, 39, 'Basic L Dowsing Rod', 'basic-l-dowsing-rod', '<p>These L Rods are made of copper plated brass. The handle is about 4.5 inches and the shaft is about 8.5 inches long.</p>\r\n\r\n<p>Instructions included.</p>\r\n\r\n<p>Made in USA.</p>\r\n\r\n<p>Copper is known to be an excellent conductor of energy. However copper will tarnish and needs to be polished to keep it looking good. We recommend a NON-ABRASIVE polish</p>', '24.95', NULL, NULL, '5.00', 0, '82128dousing rods.jpg', 0, 'Dousing Rods', 'Dousing Rods, L Rod, pendulum, metaphysical', 'These L Rods are made of copper plated brass. The handle is about 4.5 inches and the shaft is about 8.5 inches long.\r\n\r\nInstructions included.\r\n\r\nMade in USA.', '2019-02-19 00:52:45', '2019-02-19 00:54:44'),
(239, 1, 3, 'Selenite Crystal Point Pendant', 'selenite-crystal-point-pendant', '<p>Selenite Crystal Point Pendant. &nbsp;Black cord included.</p>', '11.11', NULL, NULL, '3.00', NULL, '48018selenite.jpg', 0, 'Selenite Crystal Point Pendant', 'selenite, crystal, pendant, selenite necklace', 'Selenite crystal point pendant with included satin cord.', '2019-02-19 01:20:28', '2019-02-19 01:20:28'),
(240, 3, 15, '6\" Cast Iron Cauldron', '6-cast-iron-cauldron', '<p><span style=\"color:rgb(0, 0, 0); font-family:helvetica,arial; font-size:12px\">Cast Iron Cauldron w/handle, ideal for smudging, incense burning, ritual purpose, decoration, candle holder, etc. (6&quot;Diameter handle to handle, Inside Diameter 4 1/8&quot;)</span><br />\r\n<br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:helvetica,arial; font-size:12px\">6&quot;Diameter handle to handle, Inside Diameter 4 1/8&quot;.</span></p>', '24.99', NULL, NULL, '7.00', 0, '16088cauldron.jpg', 0, 'Cast Iron Cauldron  6\"', 'cauldron, incense, cast iron, ritual', 'Cast Iron Cauldron w/handle, ideal for smudging, incense burning, ritual purpose, decoration, candle holder, etc.', '2019-02-19 06:37:45', '2019-02-19 06:41:20'),
(241, 7, 32, 'Black Soapstone Pentacle Altar Tile', 'black-soapstone-pentacle-altar-tile', '<p>Black Soapstone&nbsp; - Altar Tile&nbsp;</p>\r\n\r\n<p>This measures 6&quot;.</p>\r\n\r\n<p>Use it as an altar tile or coaster.</p>', '11.99', NULL, NULL, '5.00', NULL, '58444pentagram altar tile.jpg', 0, 'Black Soapstone Altar Tile', 'Altar Tile , Altar Supplies, Healing, Meditation, Gift Giving, Decor', 'Black soapstone altar tile.  Altar Tile , Altar Supplies, Healing, Meditation, Gift Giving, Decor', '2019-02-19 06:52:01', '2019-02-19 06:52:01'),
(242, 1, 5, 'Sterling Silver Plain Cross Pendant', 'sterling-silver-plain-cross-pendant', '<p>Plain Cross Pendant &nbsp;</p>\r\n\r\n<p>Approximate size 1.25&quot; x 0.35&quot; &nbsp;</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '9.99', NULL, NULL, '3.00', 0, '32840cross.jpg', 0, 'Plain Cross Sterling Silver Pendant', 'cross, sterling silver, pendant, sacred symbols, christian', 'Sterling Silver plain cross pendant\r\nPIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-02-19 07:05:09', '2019-04-01 00:33:01'),
(243, 1, 13, 'Gold Plate over Sterling Silver Om Necklace', 'gold-plate-over-sterling-silver-om-necklace', '<p>Gold Plate over Sterling Silver Om Necklace</p>', '49.99', NULL, NULL, '5.00', NULL, '98771om necklace.jpg', 0, 'Gold Plate over Sterling Silver Om Necklace', 'om, aum, sterling silver, gold plate, necklace', 'Gold Plate over Sterling Silver Om Necklace', '2019-02-19 07:09:17', '2019-02-19 07:09:17'),
(244, 1, 7, 'Large Sterling Silver Flower of Life Pendant', 'large-sterling-silver-flower-of-life-pendant', '<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Height :&nbsp;49mm<br />\r\nDiameter :&nbsp;39mm<br />\r\nUnit:&nbsp;Each<br />\r\nMade Of:&nbsp;Sterling Silver 925</span></span></p>\r\n\r\n<p>This symbol called the &ldquo;Flower of Life&rdquo; or &ldquo;life&rsquo;s flower&rdquo;&nbsp;consists of 19 overlapping and interconnected circles. It always consists of 19 circles &ndash; no more and no less.</p>\r\n\r\n<p>The&nbsp;<strong>Flower of Life&nbsp;</strong>originates in one circle and all other circles are built up around that. That means you begin by&nbsp;drawing one circle and then continue drawing all the other circles around it. This symbol of the Flower of Life belongs to Sacred Geometry which believes&nbsp;that all life is part of a divine, geometric plan. &nbsp;All structures known to us are following this plan.</p>', '39.99', NULL, NULL, '3.00', NULL, '88235BL17001.jpg', 0, 'Large Sterling Silver Flower of Life Pendant', 'flower of life, sterling silver, pendant', 'Large Sterling Silver Flower of Life Pendant', '2019-02-19 07:25:06', '2019-02-19 07:25:06'),
(245, 2, 2, 'Japanese Jizo Bodhisattva', 'japanese-jizo-bodhisattva', '<p>The Jizo Bodhisattva is known as the bodhisattva of the earth and is believe to be the bodhisattva and guardian of souls of children who have died, travelers, women and children in general. &nbsp;He&nbsp;represents the enlightened being whose hope is to save all souls from suffering. &nbsp;</p>\r\n\r\n<p>He is revered primarily in East Asian Buddhism. &nbsp; Jizo Bosatsu is mostly depicted as a Buddhist monk. &nbsp;His name means Earth Stone, Earth Treasury or Earth womb. &nbsp; Ksitgarbha Bodhisattva vowed to teach all beings the six worlds between the passing of Gautama (Shakuamuni) budha and the rising of Maitreya Buddha. &nbsp; He vowed not to achieve Buddhahood until all souls are saved from suffering.&nbsp; He is often seen wearing a red bib or hat. &nbsp; In Japanese lore, red is the color that repels demons and illness.</p>\r\n\r\n<p>&nbsp;</p>', '39.99', NULL, NULL, '15.00', 0, '90675luckyjapanese jizohilinegifts.jpg', 0, 'Jizo Bodhisattva', 'lucky, jizo, jizo san, bodhisattva, guardian of children, buddha', 'The Jizo Bodhisattva is known as the bodhisattva of the earth and is believe to be the bodhisattva and guardian of souls of children who have died, travelers, women and children in general.  He represents the enlightened being whose hope is to save all souls from suffering.', '2019-02-21 04:24:16', '2019-03-11 23:47:18'),
(246, 2, 2, 'Buddha Child Resting on Elephant', 'buddha-child-resting-on-elephant', '<p><span style=\"font-family:amazon ember,arial,sans-serif; font-size:small\">Buddha child on elephant in a grey clay finish. Traditional Buddha statue, brings prosperity and happiness to any home, office, garden or outdoor space.</span></p>', '119.99', NULL, '89.99', '25.00', NULL, '33094buddha child on elephant.jpg', 0, 'Buddha Child Resting on Elephant', 'Buddha, baby buddha, elephant and buddha', 'Buddha child resting on elephant.   Grey clay finish. Traditional Buddha statue, brings prosperity and happiness to any home, office, garden or outdoor space.', '2019-02-21 04:31:33', '2019-02-21 04:31:33'),
(247, 1, 45, 'Buddha Stud Earring', 'buddha-stud-earring', '<p>Sterling Silver stud earrings depict the Buddha in the earth touching mudra.</p>', '11.00', NULL, NULL, '3.00', NULL, '19438buddha stud earring.jpg', 0, 'Sterling Silver Buddha Stud Earrings', 'buddha, stud earring, sterling silver', 'Sterling Silver Buddha stud earrings', '2019-02-21 04:37:20', '2019-02-21 04:37:20'),
(248, 1, 45, 'Raw Rose Quartz Sterling Silver Stud Earrings', 'raw-rose-quartz-sterling-silver-stud-earrings', '<p>Rough unpolished&nbsp;Rose Quartz set in Sterling Silver Stud Earrings. &nbsp; Rose quartz is the stone of unconditional love.</p>\r\n\r\n<p>&nbsp;</p>', '19.99', NULL, NULL, '3.00', NULL, '89870IMG_4370.JPG', 0, 'Raw Rose Quartz Sterling Silver Stud Earrings', 'rose quartz, love stone, stud earring', 'Raw Rose Quartz Sterling Silver Stud Earrings', '2019-02-21 04:40:45', '2019-02-21 04:40:45'),
(249, 1, 45, 'Rhodochrosite Sterling Silver Stud Earrings', 'rhodochrosite-sterling-silver-stud-earrings', '<p>Rhodochrosite Sterling Silver Stud Earrings&nbsp; &nbsp;</p>\r\n\r\n<p>Rhodochrosite is a stone to assist in self-esteem and self-love.</p>\r\n\r\n<p>&nbsp;</p>', '19.99', NULL, NULL, '3.00', NULL, '77062fullsizeoutput_c31.jpeg', 0, 'Rhodochrosite Sterling Silver Stud Earrings', 'rhodochrosite, self love, sterling silver, stud earring', 'Rhodochrosite Sterling Silver Stud Earrings', '2019-02-21 04:44:29', '2019-02-21 04:44:29'),
(250, 1, 45, 'Citrine Sterling Silver Stud Earrings', 'citrine-sterling-silver-stud-earrings', '<p>Cut citrine in a&nbsp;4 x 6 &nbsp;Sterling Silver stud earring&nbsp;setting &nbsp; &nbsp;</p>\r\n\r\n<p>Citrine is the stone of wealth and prosperity.</p>', '19.99', NULL, NULL, '3.00', 0, '55358citrinestuds.jpg', 0, 'Citrine Sterling Silver Stud Earrings', 'citrine, wealth stone, stud earrings', 'Citrine Sterling Silver Stud Earrings', '2019-02-21 04:49:04', '2019-02-26 23:28:01'),
(251, 1, 13, 'Larimar Statement Necklace', 'larimar-statement-necklace', '<p>You&#39;ll make a statement with this stunning larimar cluster necklace. &nbsp;Sterling Silver with many free form larimar stones set in a lovely V. &nbsp; &nbsp;<var>This is a great price for this much larimar!! &nbsp;</var><span style=\"color:rgb(34, 34, 34); font-family:arial,helvetica,sans-serif; font-size:12px\">This larimar cluster necklace is gorgeous!</span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Larimar</strong><span style=\"color:rgb(34, 34, 34)\">&nbsp;is said to enlighten and heal in a physical, emotional, mental and spiritual way. It stimulates the heart, throat, third eye and crown chakras facilitating inner wisdom and outer manifestation. It represents peace and clarity, radiating healing and love energy. &nbsp;&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(34, 34, 34)\">Pixie Dust&#39;s trademark jewelry is made with sterling silver and fine gemstones and with energy healing and the vibrations of the stones in mind.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '411.00', NULL, NULL, '0.00', 0, '87216larimar cluster necklace..jpg', 0, 'Larimar Statement Necklace', 'larimar, statement necklace, cluster necklace, free form, larimar necklace, sterling silver larimar', 'You\'ll make a statement with this stunning larimar cluster necklace.  Sterling Silver with many free form larimar stones set in a lovely V.    This is a great price for this much larimar!!', '2019-02-26 23:40:50', '2019-03-31 23:08:30'),
(252, 7, 34, 'Silver Plated Pentacle Heart Chalice', 'silver-plated-pentacle-heart-chalice', '<p>Silver plated chalice stands approximately 8&quot; and features an engraved pentacle with a heart in the middle. &nbsp; Beautiful for your rituals or would make a lovely handfasting keepsake.</p>', '39.99', NULL, NULL, '7.00', 0, '62280heartchalice.jpg', 0, 'Silver Plated Heart Pentacle Chalice', 'chalice, wiccan, sterling chalice, wiccan drinking cup,  wicca, silver chalice, pentacle chalice, pentacle heart chalice, pentagram chalice', 'Silver plated chalice stands approximately 8\" and features an engraved pentacle with a heart in the middle.   Beautiful for your rituals or would make a lovely Wiccan handfasting keepsake.', '2019-03-04 00:04:02', '2019-03-04 00:11:44'),
(253, 7, 34, 'Celtic Knot Triquetra Silver Plated Chalice', 'celtic-knot-triquetra-silver-plated-chalice', '<p>Silver plated ritual chalice stands approximately 5&quot; tall and features and intricate&nbsp;engraved Celtic knot triquetra.</p>', '28.99', NULL, NULL, '7.00', 0, '21455celticknottriquetra.jpg', 0, 'Triquetra Silver Chalice', 'Celtic knot, triquetra silver chalice, triquetra, charmed, Wicca, wiccan chalice, silver chalice', 'Silver plated ritual chalice stands approximately 5\" tall and features an engraved  celtic knot triquetra.', '2019-03-04 00:15:59', '2019-03-04 00:21:28'),
(254, 7, 43, 'Triple Moon Pentacle Altar Cloth', 'triple-moon-pentacle-altar-cloth', '<p>Triple moon with pentacle Wiccan altar cloth. &nbsp;24&quot; x 24&quot;</p>', '12.99', NULL, NULL, '2.00', NULL, '36983altarcloth24x24.jpg', 0, 'Triple moon with pentacle Wiccan altar cloth.  24\" x 24\"', 'triple moon, goddess, triple goddess, altar cloth, wiccan, pentacle, altar', 'Triple moon with pentacle Wiccan altar cloth.  24\" x 24\"', '2019-03-04 00:26:52', '2019-03-04 00:26:52'),
(255, 3, 15, 'Brass Aladdin (Genie) Lamp Cone Incense Burner', 'brass-aladdin-genie-lamp-cone-incense-burner', '<p>Brass Aladdin (Genie) Lamp Cone Incense Burner&nbsp;&nbsp;5&quot;</p>', '12.99', NULL, NULL, '5.00', 0, '58973brassalladinlamp5%22.jpg', 0, 'Brass Aladdin (Genie) Lamp Cone Incense Burner', 'aladdin lamp, genie lamp, incense burner, brass incense burner, incense holder', 'Brass Aladdin (Genie) Lamp Cone Incense Burner  5\"', '2019-03-04 00:37:40', '2019-03-04 00:40:40'),
(256, 3, 15, 'Brass Hanging Censer Incense Burner', 'brass-hanging-censer-incense-burner', '<p>Hanging brass censer incense burner&nbsp;</p>\r\n\r\n<p><span style=\"font-family:amazon ember,arial,sans-serif; font-size:small\">Hanging censers can be carried about the room, or around a magic circle. They are great for using when you want to take the incense from room to room, as in a house spiritual cleansing, etc. You can just leave it hanging in a stationary position, too. The choice is yours. This brass thurible censer hangs on 3 chains, about 9 inches long. The incense burner is just over 3 inches across and 4.5 Inches tall with the cover on. The incense burner has little star cutouts on the lid that allow the air to move about freely. This hanging brass incense burner is great for burning charcoal w/herbs, resins, or powders, or you can use it for cones.</span></p>', '14.99', NULL, NULL, '5.00', NULL, '22581brasshanging censor burner 5in.jpg', 0, 'Hanging Brass Incense Censer Burner', 'Censer, hanging incense burner, brass incense burner,', 'Hanging brass censer incense burner 5\"  \r\n\r\nHanging censers can be carried about the room, or around a magic circle. They are great for using when you want to take the incense from room to room, as in a house spiritual cleansing, etc. You can just leave it hanging in a stationary position, too. The choice is yours. This brass thurible censer hangs on 3 chains, about 9 inches long. The incense burner is just over 3 inches across and 4.5 Inches tall with the cover on. The incense burner has little star cutouts on the lid that allow the air to move about freely. This hanging brass incense burner is great for burning charcoal w/herbs, resins, or powders, or you can use it for cones.', '2019-03-04 00:47:37', '2019-03-04 00:47:37'),
(257, 2, 46, 'Small Brass Om', 'small-brass-om', '<p>3 inch brass Om wall hanging</p>', '14.99', NULL, NULL, '3.00', NULL, '379203inchbrassom.jpg', 0, 'Small Brass Om Wall Hanging', 'hanging om, om, brass om, om wall hanging', 'Small Brass Om Wall Hanging', '2019-03-04 01:32:15', '2019-03-04 01:32:15'),
(258, 2, 46, 'Large Brass Om Wall Hanging', 'large-brass-om-wall-hanging', '<p>6&quot; Brass Om Carved Wall Hanging</p>', '29.99', NULL, NULL, '4.00', 1, '586896inchbrassom.jpg', 0, 'Large Brass Om', 'Brass Om, Om, Om decor, wall hanging', '6\" Brass Om', '2019-03-04 01:34:09', '2019-03-04 01:34:09'),
(259, 4, 47, 'Wood Handheld Compass', 'wood-handheld-compass', '<p>Antique replica wood hand held compass.</p>', '14.99', NULL, NULL, '3.00', 1, '57789compassinbox.jpg', 0, 'Antique Replica Wood Hand Held Compass', 'compass, antique, wood box, nautical', 'Antique replica wood hand held compass.', '2019-03-04 01:37:20', '2019-03-04 01:38:32'),
(260, 2, 2, 'Dancing Tara Brass Statue', 'dancing-tara-brass-statue', '<p><span style=\"color:rgb(0, 0, 0); font-family:helvetica,arial; font-size:12px\">Dancing Tara &nbsp;9&quot; Brass Statue</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:helvetica,arial; font-size:12px\">Goddess of Peace &amp; Protection. Beautifully handcrafted in India of Solid Brass in antique finish. Golden highlights in silver finish.</span></p>', '89.99', NULL, NULL, '10.00', NULL, '77853dancingtara.jpg', 0, 'Dancing Tara Brass Statue', 'Tara, Dancing, Brass Statue, Tara Goddess, Peace, Protection,', 'Dancing Tara  9\" Brass Statue\r\n\r\nGoddess of Peace & Protection. Beautifully handcrafted in India of Solid Brass in antique finish. Golden highlights in silver finish.', '2019-03-04 01:42:33', '2019-03-04 01:42:33'),
(261, 4, 21, 'Wood Handle Candle Snuffer', 'wood-handle-candle-snuffer', '<p>Wood Handle Brass Candle Snuffer</p>', '8.99', NULL, NULL, '5.00', 0, '92299candlesnuffer.jpg', 0, 'Wood handle brass candle snuffer', 'candle, candle snuffer', 'Wood handle brass candle snuffer', '2019-03-04 01:46:49', '2019-03-06 05:49:13'),
(262, 1, 9, 'Wood Pentacle', 'wood-pentacle', '<p>Large 3&quot; Carved Wood Pentacle on cord &nbsp;</p>', '9.99', NULL, NULL, '2.00', NULL, '86034woodpentagram3inch.jpg', 0, 'Carved Wood Pentacle', 'pentacle, pentagram, wood, Wicca, pagan, large pentacle', 'Large 3\" Carved Wood Pentacle on cord', '2019-03-04 01:50:55', '2019-03-04 01:50:55'),
(263, 4, 47, 'Antique Replica Sundial and Compass in Wood Box', 'antique-replica-sundial-and-compass-in-wood-box', '<p>Antique Replica Sundial and Compass in Wood Box</p>', '79.99', NULL, NULL, '5.00', 1, '17198compasssundial.jpg', 0, 'Antique Replica Sundial and Compass in Wood Box', 'sundial, compass, antique', 'Antique Replica Sundial and Compass in Wood Box', '2019-03-04 01:53:19', '2019-03-04 01:53:19'),
(264, 5, 20, 'Blue Om 5\" Tibetan Singing Bowl', 'blue-om-5-tibetan-singing-bowl', '<p>Website exclusive! &nbsp; Not offered in our store. &nbsp;<span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Brass singing bowl with painted Tibetan Om inside and outside the mantra &quot;Om Mani Padme Hum&quot; written in Tibetan script. 5.5&quot; Diameter&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Wood mallet included.</span></p>\r\n\r\n<p>&nbsp;</p>', '59.99', NULL, NULL, '5.00', NULL, '79203omsingingbowlrexpo.jpg', 0, 'Blue Om 5\" Tibetan Singing Bowl', 'singing bowl, tibetan, om', 'Brass singing bowl with painted Tibetan Om inside and outside the mantra \"Om Mani Padme Hum\" written in Tibetan script. 5.5\" Diameter \r\n\r\nWood mallet included.', '2019-03-04 01:58:55', '2019-03-04 01:58:55'),
(265, 4, 21, 'Stone Yin/Yang Tealight Candle Holder', 'stone-yinyang-tealight-candle-holder', '<p>Stone Yin/Yang Candle Holder &nbsp;<span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Get in touch with your Yin-Yang, light/dark, day/night, masculine/feminine, sun/moon.&nbsp;</span><br />\r\n<span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Yin is seen as dark, passive and feminine Yang is seen as light, active and masculine. These two sides work in harmony with each other. Each burner holds two tea light candles.</span></p>', '14.99', NULL, NULL, '5.00', NULL, '15828stoneyinyangcandle.jpg', 0, 'Stone Yin/Yang Candle Holder', 'yin, yang, candle holder, tea light', 'Stone Yin/Yang Tea Light Candle Holder', '2019-03-04 02:12:05', '2019-03-04 02:12:05'),
(266, 4, 24, 'Wooden Cat Puzzle Box', 'wooden-cat-puzzle-box', '<p><span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Hand carved cat shaped puzzle box made of Sheesham Wood. 5&quot;x4&quot;</span></p>', '19.99', NULL, NULL, '6.00', NULL, '25668woodcatpuzzlebox.jpg', 0, 'Wood Cat Puzzle Box', 'puzzle, box, cat', 'A hand carved cat shaped puzzle box made of Sheesham Wood. 5\"x4\"', '2019-03-04 02:37:47', '2019-03-04 02:37:47'),
(267, 4, 24, 'Wooden Om Puzzle Box', 'wooden-om-puzzle-box', '<p>Carved Om Wooden Puzzle Box</p>', '24.99', NULL, NULL, '6.00', NULL, '68568ompuzzlebox.jpg', 0, 'Carved Wood Om Puzzle Box', 'wood box, carved box, om, puzzle', 'Carved Wood Om Puzzle box', '2019-03-04 02:40:15', '2019-03-04 02:40:15'),
(268, 3, 15, 'Yin Yang Incense Burner', 'yin-yang-incense-burner', '<p>Black and white stone yin/yang incense burner, &nbsp;4&quot; &nbsp;&nbsp;<span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Get in touch with your Yin-Yang, light/dark, day/night, masculine/feminine, sun/moon.&nbsp;</span><br />\r\n<span style=\"color:rgb(119, 119, 119); font-family:open sans,helvetica neue,helvetica,arial,sans-serif\">Yin is seen as dark, passive and feminine Yang is seen as light, active and masculine. These two sides work in harmony with each other. Each burner holds two tea light candles.</span></p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '4.00', NULL, '90191yinyangincense.jpg', 0, 'Black and White Stone Yin/Yang Incense burner.', 'yin, yang, incense burner', 'Black and White Stone Yin/Yang Incense burner.   Get in touch with your Yin-Yang, light/dark, day/night, masculine/feminine, sun/moon. \r\nYin is seen as dark, passive and feminine Yang is seen as light, active and masculine. These two sides work in harmony with each other. Each burner holds two tea light candles.', '2019-03-04 02:49:57', '2019-03-04 02:49:57'),
(269, 3, 15, 'Buddha Incense Burner', 'buddha-incense-burner', '<p>Shakyamuni Buddha incense burner &nbsp;Made of&nbsp;cold cast resin &nbsp; Approximately 10&quot;</p>', '19.99', NULL, NULL, '7.00', NULL, '18211shakyamuni_buddha_incense_holder__71682.1468943130.1280.1280.jpg', 0, 'Buddha Incense Burner', 'buddha, incense, incense burner, buddha incense burner', 'cold cast resin   Approximately 10\"', '2019-03-04 04:38:03', '2019-03-04 04:38:03'),
(270, 3, 15, 'Fairy Incense Burner', 'fairy-incense-burner', '<p><span style=\"color:rgb(85, 85, 85); font-family:helvetica,arial,sans-serif; font-size:12px\">This beautiful fairy incense-stick holder comes in a copper patina&nbsp;finish and features a lazy fairy languishing as she watches a butterfly, her long wings making up the dish portion of the holder. Approximately 10&quot; long.</span></p>', '19.99', NULL, NULL, '6.00', NULL, '67563fairy-incense-burner-1130131-2_grande.jpg', 0, 'Fairy Incense Burner', 'fairy, butterfly, incense burner', 'This beautiful fairy incense-stick holder comes in a copper patina finish and features a lazy fairy languishing as she watches a butterfly, her long wings making up the dish portion of the holder. Approximately 10\" long.', '2019-03-04 04:54:31', '2019-03-04 04:54:31'),
(271, 1, 3, 'Black Obsidian Pendant', 'black-obsidian-pendant', '<p>Black obsidian point pendant includes 30&quot; satin cord. &nbsp;<span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">Obsidian is a strongly protective stone, it forms a shield against negativity. It blocks psychic attack and absorbs negative energies from the environment. Obsidian draws out mental&nbsp;</span>stress<span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">&nbsp;and tension.</span></p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '3.00', NULL, '12036black obsidian pencil pendant revised.jpeg', 0, 'Black Obsidian Pendant', 'obsidian, obsidian pendant, protection, negativity, black obsidian', 'Black Obsidian Pendant includes 30\" satin cord.', '2019-03-04 05:05:47', '2019-03-04 05:05:47'),
(272, 1, 3, 'Amazonite Point Pendant', 'amazonite-point-pendant', '<p>Amazonite Point Pendant includes 30&quot; satin cord. &nbsp; Amazonite is a stone of good luck, prosperity and general good health. &nbsp; It aligns with the throat and heart chakras.</p>', '11.11', NULL, NULL, '3.00', NULL, '26550amazonite cap pencil pendant revised.jpeg', 0, 'Amazonite point pendant', 'amazonite, pendant, good luck stone, good luck crystal, good health, prosperity', 'Amazonite Point Pendant includes 30\" satin cord.   Amazonite is a stone of good luck, prosperity and general good health.   It aligns with the throat and heart chakras.', '2019-03-04 05:12:21', '2019-03-04 05:12:21'),
(273, 1, 3, 'Black Tourmaline Point Pendant', 'black-tourmaline-point-pendant', '<p>Black tourmaline pendant includes 30&quot; satin cord. &nbsp;Black Tourmaline is a protective stone which repels and blocks negative energies and psychic attack. It aids in the removal of negative energies within a person or a space. &nbsp;Black Tourmaline will cleanse, purify, and transform dark energy into a lighter vibration. &nbsp;&nbsp;<br />\r\nA popular metaphysical stone, Black Tourmaline is &nbsp;great for grounding. &nbsp;It balances, harmonizes, and protects all of the Chakras. &nbsp;Use Black Tourmaline to protect against EMF (i.e. cell phones, computers, etc), radiation, noise sensitivity and other such disturbances. &nbsp;Black Tourmaline can be used as an aid to remove fear and boost self-confidence.</p>', '11.11', NULL, NULL, '3.00', NULL, '44134black-tourmaline-pencil pendant revised.jpeg', 0, 'Black Tourmaline Pendant', 'black tourmaline, protection, pendant', 'Black Tourmaline is a protective stone which repels and blocks negative energies and psychic attack. It aids in the removal of negative energies within a person or a space.  Black Tourmaline will cleanse, purify, and transform dark energy into a lighter vibration.   \r\nA popular metaphysical stone, Black Tourmaline is  great for grounding.  It balances, harmonizes, and protects all of the Chakras.  Use Black Tourmaline to protect against EMF (i.e. cell phones, computers, etc), radiation, noise sensitivity and other such disturbances.  Black Tourmaline can be used as an aid to remove fear and boost self-confidence.', '2019-03-04 05:18:06', '2019-03-04 05:18:06'),
(274, 1, 3, 'Howlite Point Pendant', 'howlite-point-pendant', '<p>Howlite Point Pendant includes 30&quot; satin cord. &nbsp;&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Howlite helps to calm you if you are stressed or anxious, especially if your stress is related to having to deal with angry people. &nbsp;These white crystals may assist you to tactfully and subtly convey your thoughts so that the underlying message can be easily received.</p>', '11.11', NULL, NULL, '3.00', NULL, '97357howlite cap pencil pendant rev.jpeg', 0, 'Howlite point pendant', 'hoplite, pendant', 'Howlite point pendant includes 30\" satin cord.', '2019-03-04 05:24:03', '2019-03-04 05:24:03'),
(275, 1, 3, 'Opalite Point Pendant', 'opalite-point-pendant', '<p>Opalite is an iridescent man-made stone with is made up of Dolomite and other materials to create an opalescent appearance. &nbsp; Though man-made, it does have some metaphysical properties. &nbsp;It is a protective, calming stone that&nbsp;will boost your self-esteem and improve your sense of self-worth and&nbsp;unleash your inner strength.</p>', '11.11', NULL, NULL, '3.00', NULL, '28649opalite cap pencil pendant rev.jpeg', 0, 'Opalite Point Pendant', 'opalite, pendant', 'Opalite point pendant includes 30\" satin cord.', '2019-03-04 05:31:17', '2019-03-04 05:31:17');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `price`, `discount`, `discount_price`, `shipping_price`, `best_seller`, `image`, `prd_cs_opt`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(276, 1, 3, 'Tourmalinated Quartz Point Pendant', 'tourmalinated-quartz-point-pendant', '<p>Tourmalinated Quartz Point Pendant with 30&quot; cord. &nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:rgb(0, 0, 0); font-family:open sans,sans-serif\">Tourmalinated Quartz has the combined properties and unique energy vibrations of both Clear Quartz and Black Tourmaline. Clear Quartz amplifies vibratory energies and intentions. Black Tourmaline&rsquo;s cleansing and grounding influence keeps the Quartz Crystal clear of any negativity. The Quartz Crystal amplifies the Black Tourmaline&rsquo;s cleansing energies. The combination of the Clear Quartz and Black Tourmaline makes this crystal a powerful energetic tool to clear negative energy.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:rgb(0, 0, 0); font-family:open sans,sans-serif\">An effective grounding stone, the long &ldquo;threads&rdquo; of Black Tourmaline strengthens the body&rsquo;s energy field against external invasion and creates an energetic shield against detrimental environmental influences. Tourmalinated Quartz cleanses the aura, clearing energy patterns that have resulted in stagnation. Tourmalinated Quartz&nbsp;helps to integrate and heal the shadow energies. Tourmalinated Quartz helps to release the outworn patterns and reestablishes energetic flow with emotional clarity. Tourmalinated Quartz helps one feel both enlightened and grounded. . Tourmalinated Quartz facilitates clear thinking and helps one to understand and appropriately deal with hostile situations and relationships. Tourmalinated Quartz aids in the elimination of destructive and outworn behavioral patterns.&nbsp;</span></span></p>', '11.11', NULL, NULL, '3.00', 0, '85438tourmilinated quartz cap pencil pendant.jpg', 0, 'Tourmalinated Quartz Point Pendant', 'Tourmaline, Quartz, Tourmalinated Quartz, pendant, clear negative energy', 'Tourmalinated Quartz Point Pendant with 30\" cord', '2019-03-05 01:04:27', '2019-03-05 01:10:29'),
(277, 1, 3, 'Rose Quartz Crystal Point Pendant', 'rose-quartz-crystal-point-pendant', '<p>Rose Quartz Crystal Point Pendant with included 30&quot; cord. &nbsp; &nbsp;Rose quartz is a stone of love in all its forms. &nbsp;It is unconditional, tender and forgiving. &nbsp; Rose quartz has a gentle healing energy.</p>', '11.11', NULL, NULL, '3.00', NULL, '37095rose quartz cap pencil pendant rev.jpeg', 0, 'Rose Quartz Crystal Point Pendant', 'rose quartz, love, stone of love, crystal for love, rose, quartz, pendant', 'Rose Quartz Crystal Point Pendant with included 30\" cord.    Rose quartz is a stone of love in all its forms.  It is unconditional, tender and forgiving.   Rose quartz has a gentle healing energy.', '2019-03-05 01:14:49', '2019-03-05 01:14:49'),
(278, 1, 8, 'Aries (March 21-April 19) Symbol Pendant', 'aries-march-21-april-19-symbol-pendant', '<p>Pewter Aries Symbol Pendant&nbsp;comes on 30&quot; cord and a card explaining the traits of people born under the sign of Aries. &nbsp;March 21-April 19</p>', '12.99', NULL, NULL, '2.00', NULL, '62087IMG_0011.JPG', 0, 'Aries Symbol Pendant', 'March birthday, April birthday, Aries, Aries pendant, aries necklace, astrology, zodiac.', 'Pewter Aries Symbol Pendant comes on 30\" cord and a card explaining the traits of people born under the sign of Aries.  March 21-April 19', '2019-03-05 01:37:11', '2019-03-05 01:37:11'),
(279, 1, 8, 'Taurus (April 20-May 20) Pewter Astrology Pendant', 'taurus-april-20-may-20-pewter-astrology-pendant', '<p>Taurus (April 20-May 20) Pewter Astrology Pendant&nbsp;comes with a black cord and on a card that explains the traits of a person born under the zodiac sign of Taurus.</p>', '12.99', NULL, NULL, '2.00', NULL, '50809IMG_0023.JPG', 0, 'Taurus (April 20-May 20) Pewter Astrology Pendant', 'Taurus, astrology, zodiac, April Birthday, May birthday, pendant, necklace', 'Taurus (April 20-May 20) Pewter Astrology Pendant comes with a black cord and on a card that explains the traits of a person born under the zodiac sign of Taurus.', '2019-03-05 01:44:19', '2019-03-05 01:44:19'),
(280, 1, 8, 'Gemini (May 21-June20) Pewter Astrology Pendant', 'gemini-may-21-june20-pewter-astrology-pendant', '<p>Gemini (May 21-June 20) Pewter Astrology Pendant&nbsp;comes on a black 30&quot; cord and a card that explains the traits of a person born under the zodiac sign of Gemini.</p>', '12.99', NULL, NULL, '2.00', NULL, '31033IMG_0012.JPG', 0, 'Gemini (May 21-June 20) Pewter Astrology Pendant​', 'gemini, pendant, astrology, astrological, zodiac, may, june, birthday', 'Gemini (May 21-June 20) Pewter Astrology Pendant​ comes on a black 30\" cord and a card that explains the traits of a person born under the zodiac sign of Gemini.', '2019-03-05 01:49:31', '2019-03-05 01:49:31'),
(281, 1, 8, 'Cancer (June 21-July 22) Pewter Astrology Pendant​', 'cancer-june-21-july-22-pewter-astrology-pendant', '<p>Cancer (June 21-July 22) Pewter Astrology Pendant​&nbsp;comes on a black 30&quot; cord and a card that explains the traits of a person born under the zodiac sign of Cancer.</p>', '12.99', NULL, NULL, '2.00', NULL, '65766IMG_0013.JPG', 0, 'Cancer (June 21-July 22) Pewter Astrology Pendant', 'Cancer, astrology, zodiac, june, july, birthday, astrological, necklace, pendant', 'Cancer (June 21-July 22) Pewter Astrology Pendant​ comes on a black 30\" cord and a card that explains the traits of a person born under the zodiac sign of Cancer.', '2019-03-05 01:53:03', '2019-03-05 01:53:03'),
(282, 1, 8, 'Leo (July 23-August 22) Pewter Astrology Pendant', 'leo-july-23-august-22-pewter-astrology-pendant', '<p>Leo (July 23-August 22) Pewter Astrology Pendant&nbsp;comes on a 30&quot; black cord and a card that explains the traits of people born under the zodica sign of Leo.</p>', '12.99', NULL, NULL, '2.00', NULL, '89559IMG_0014.JPG', 0, 'Leo (July 23-August 22) Pewter Astrology Pendant', 'Leo, july, august, zodiac, astrology, astrological, pendant', 'Leo (July 23-August 22) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodica sign of Leo.', '2019-03-05 01:59:15', '2019-03-05 01:59:15'),
(283, 1, 8, 'Virgo (August 23-September 22) Pewter Astrology Pendant', 'virgo-august-23-september-22-pewter-astrology-pendant', '<p>Virgo (August 23-September 22) Pewter Astrology Pendant comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Virgo.</p>', '12.99', NULL, NULL, '2.00', NULL, '55251IMG_0016.JPG', 0, 'Virgo (August 23-September 22) Pewter Astrology Pendant', 'virgo, august, september, birthday, astrology, zodiac, astrological, sun sign, pendant', 'Virgo (August 23-September 22) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Virgo.', '2019-03-05 02:08:05', '2019-03-05 02:08:05'),
(284, 1, 8, 'Libra (September 23-October 22) Pewter Astrology Pendant', 'libra-september-23-october-22-pewter-astrology-pendant', '<p>Libra (September 23-October 22) Pewter Astrology Pendant&nbsp;comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Libra.</p>', '12.99', NULL, NULL, '2.00', NULL, '45859IMG_0017.JPG', 0, 'Libra (September 23-October 22) Pewter Astrology Pendant', 'libra, pendant, astrology, astrological, zodiac, september, october, birthday', 'Libra (September 23-October 22) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Libra.', '2019-03-05 02:11:25', '2019-03-05 02:11:25'),
(285, 1, 8, 'Scorpio (October 23-November 21) Pewter Astrology Pendant', 'scorpio-october-23-november-21-pewter-astrology-pendant', '<p>Scorpio (October 23-November 21) Pewter Astrology Pendant&nbsp;comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Scorpio.</p>', '12.99', NULL, NULL, '2.00', NULL, '37304IMG_0018.JPG', 0, 'Scorpio (October 23-November 21) Pewter Astrology Pendant', 'Scorpio, october, november, astrology, pendant, necklace, zodiac, astrology, astrological, sun sign, birthday', 'Scorpio (October 23-November 21) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Scorpio.', '2019-03-05 02:17:58', '2019-03-05 02:17:58'),
(286, 1, 8, 'Sagittarius (November 22-December 21) Pewter Astrology Pendant', 'sagittarius-november-22-december-21-pewter-astrology-pendant', '<p>Sagittarius (November 22-December 21) Pewter Astrology Pendant&nbsp;comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Sagittarius.</p>', '12.99', NULL, NULL, '2.00', 0, '51248IMG_0019.JPG', 0, 'Sagittarius (November 22-December 21) Pewter Astrology Pendant', 'sagittarius, november, december, birthday, astrology, pendant, necklace, zodiac', 'Sagittarius (November 22-December 21) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Sagittarius.', '2019-03-05 02:23:18', '2019-03-05 02:25:46'),
(287, 1, 8, 'Capricorn (December 22-January 19) Pewter Astrology Pendant', 'capricorn-december-22-january-19-pewter-astrology-pendant', '<p>Capricorn (December 22-January 19) Pewter Astrology Pendant&nbsp;&nbsp;comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Capricorn.</p>', '12.99', NULL, NULL, '2.00', NULL, '13356IMG_0020.JPG', 0, 'Capricorn (December 22-January 19) Pewter Astrology Pendant', 'capricorn, astrology, astrological, sun sign, sign, zodiac, necklace, pendant, birthday, december, january', 'Capricorn (December 22-January 19) Pewter Astrology Pendant  comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Capricorn.', '2019-03-05 02:50:10', '2019-03-05 02:50:10'),
(288, 1, 8, 'Aquarius (January 20-February18) Pewter Astrology Pendant', 'aquarius-january-20-february18-pewter-astrology-pendant', '<p>Aquarius (January 20-February18) Pewter Astrology Pendant comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Aquarius.</p>', '12.99', NULL, NULL, '2.00', NULL, '21053IMG_0021.JPG', 0, 'Aquarius (January 20-February18) Pewter Astrology Pendant', 'Aquarius, astrology, february, january, birthday, sun sign, zodiac, astrological, necklace, pendant', 'Aquarius (January 20-February18) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Aquarius.', '2019-03-05 03:00:43', '2019-03-05 03:00:43'),
(289, 1, 8, 'Pisces (February19-March 20) Pewter Astrology Pendant', 'pisces-february19-march-20-pewter-astrology-pendant', '<p>Pisces (February19-March 20) Pewter Astrology Pendant&nbsp;comes on a 30&quot; black cord and a card that explains the traits of people born under the zodiac&nbsp;sign of Pisces.</p>', '12.99', NULL, NULL, '2.00', NULL, '63000IMG_0022.JPG', 0, 'Pisces (February19-March 20) Pewter Astrology Pendant', 'Pisces, February, March, birthday, Astrology, Pendant, zodiac sign, Pisces sun sign, zodiac, astrological', 'Pisces (February19-March 20) Pewter Astrology Pendant comes on a 30\" black cord and a card that explains the traits of people born under the zodiac sign of Pisces.', '2019-03-05 03:04:27', '2019-03-05 03:04:27'),
(290, 4, 42, 'Pixie Dust', 'pixie-dust', '<p>Pixie Dust &nbsp;&nbsp;Cosmetic grade body glitter comes in a variety of colors.</p>', '5.99', NULL, NULL, '3.00', 1, '81301IMG_0512.JPG', 0, 'Pixie Dust', 'Pixie Dust, Fairy Dust, glitter, body glitter', 'Pixie Dust   Cosmetic grade body glitter comes in a variety of colors.', '2019-03-05 03:19:07', '2019-03-05 03:19:07'),
(291, 8, 37, 'Motherpeace Round Tarot Deck', 'motherpeace-round-tarot-deck', '<p>The creators of Motherpeace Tarot have departed from traditional (and often patriarchal) imagery of tarot, and have instead embraced the goddess spirit. The feminist emphasis is balanced with several male figures present in the deck. Motherpeace&rsquo;s round cards and primitive artwork allow the reader to rely on intuition rather than standard &ldquo;black and white&rdquo; meanings.</p>\r\n\r\n<p>The four suits of the Minor Arcana are Cups; Wands, depicted with African culture; Discs, illustrated with Navajo culture; and Swords, depicted with Greco-Roman imagery.</p>', '26.99', NULL, NULL, '4.00', NULL, '32766motherpeace tarot.jpg', 0, 'Motherpeace Tarot', 'Motherpeace, Tarot, round tarot', 'The creators of Motherpeace Tarot have departed from traditional (and often patriarchal) imagery of tarot, and have instead embraced the goddess spirit. The feminist emphasis is balanced with several male figures present in the deck. Motherpeace’s round cards and primitive artwork allow the reader to rely on intuition rather than standard “black and white” meanings.\r\n\r\nThe four suits of the Minor Arcana are Cups; Wands, depicted with African culture; Discs, illustrated with Navajo culture; and Swords, depicted with Greco-Roman imagery.', '2019-03-05 04:19:58', '2019-03-05 04:19:58'),
(292, 8, 37, 'Pocket Crowley Thoth Tarot Deck', 'pocket-crowley-thoth-tarot-deck', '<p><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">The cards were painted by Lady Frieda Harris according to instructions from the occult scholar, Aleister Crowley. The magnificent art deco work contains kabalistic and astrological attributions described in Aleister Crowley&rsquo;s Book of Thoth. The stunning art deco artwork of the Thoth is rich in Egyptian symbolism. To each of the twenty-two Major Trumps of the tarot is assigned, by tradition, a Hebrew letter and a path on the Tree of Life, as well as an astrological sign, element, or planet. The deck also reflects Crowley&rsquo;s interest in alchemy and magic. Crowley Thoth Tarot has attracted a worldwide following, both for its striking beauty and for its complex depiction of occult knowledge. Since its initial publication in 1969, the deck has never been out of print. Included with the deck is a booklet of instruction, which contains two essays by Lady Frieda Harris and a commentary by Stuart R. Kaplan. This pocket version is the size of a regular deck of playing cards.</span></p>', '20.00', NULL, NULL, '3.00', 0, '27961thoth2395.jpg', 0, 'Pocket Crowley Thoth Tarot', 'crowley, thoth, thelema, tarot,', 'The cards were painted by Lady Frieda Harris according to instructions from the occult scholar, Aleister Crowley. The magnificent art deco work contains kabalistic and astrological attributions described in Aleister Crowley’s Book of Thoth. The stunning art deco artwork of the Thoth is rich in Egyptian symbolism. To each of the twenty-two Major Trumps of the tarot is assigned, by tradition, a Hebrew letter and a path on the Tree of Life, as well as an astrological sign, element, or planet. The deck also reflects Crowley’s interest in alchemy and magic. Crowley Thoth Tarot has attracted a worldwide following, both for its striking beauty and for its complex depiction of occult knowledge. Since its initial publication in 1969, the deck has never been out of print. Included with the deck is a booklet of instruction, which contains two essays by Lady Frieda Harris and a commentary by Stuart R. Kaplan. This pocket version is the size of a regular deck of playing cards.', '2019-03-05 04:24:19', '2019-03-05 04:29:25'),
(293, 8, 37, 'Rumi Oracle', 'rumi-oracle', '<p><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">Rumi</span><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">&nbsp;speaks a sacred language that we understand in our hearts rather than our minds. For everyone drawn to his sublime poetry, this oracle deck strengthens and illuminates their connection with this beautiful and powerful soul. The many blessings of this spiritual brother are available to all who accept the mysteries of life. Set includes 44 cards and 204-page guidebook.</span></p>', '23.99', NULL, NULL, '5.00', 1, '21143rumioracle.jpg', 0, 'Rumi Oracle Cards', 'rumi, oracle, oracle deck', 'Rumi speaks a sacred language that we understand in our hearts rather than our minds. For everyone drawn to his sublime poetry, this oracle deck strengthens and illuminates their connection with this beautiful and powerful soul. The many blessings of this spiritual brother are available to all who accept the mysteries of life. Set includes 44 cards and 204-page guidebook.', '2019-03-05 04:45:53', '2019-03-05 04:45:53'),
(294, 8, 37, 'Rana George Lenormand', 'rana-george-lenormand', '<p>With a sprinkle of Lebanese folklore and a dash of 1001 Nights this exotic Lenormand deck reflects Rana George&rsquo;s nostalgic views and personal memories of Lebanon. Rana also shares her considerable expertise in the art of reading with the Lenormand system. Every intricate detail of the Rana George Lenormand serves her mission of creating a deck unlike any other with its enticing artwork and insightful instruction. Both the box and the cards feature exquisite gold foil accents and the cards have a luxurious pearlized finish. This 42-card deck includes extra Man and Woman cards, for same-sex readings, as well as four additional cards that enhance the Lenormand experience: Spirit, Incense Burner, Bed and Market. In her 124-page guidebook Rana explains the cards&rsquo; contextual meanings in a reading and shares the personal associations that inspired each card. She also offers helpful instructions with multiple examples of actual questions explored in Lenormand readings.</p>\r\n\r\n<p>Rana George is the author of&nbsp;<em>The Essential Lenormand&nbsp;</em>book and is a contributor to the&nbsp;<em>Gilded Reverie Lenormand&nbsp;</em>guidebook.</p>', '24.99', NULL, NULL, '3.00', NULL, '41868RanaGeorgeLenormand.jpg', 0, 'Rana George Lenormand', 'rana george, lenormand, oracle, fortune telling', 'With a sprinkle of Lebanese folklore and a dash of 1001 Nights this exotic Lenormand deck reflects Rana George’s nostalgic views and personal memories of Lebanon. Rana also shares her considerable expertise in the art of reading with the Lenormand system. Every intricate detail of the Rana George Lenormand serves her mission of creating a deck unlike any other with its enticing artwork and insightful instruction. Both the box and the cards feature exquisite gold foil accents and the cards have a luxurious pearlized finish. This 42-card deck includes extra Man and Woman cards, for same-sex readings, as well as four additional cards that enhance the Lenormand experience: Spirit, Incense Burner, Bed and Market. In her 124-page guidebook Rana explains the cards’ contextual meanings in a reading and shares the personal associations that inspired each card. She also offers helpful instructions with multiple examples of actual questions explored in Lenormand readings.\r\n\r\nRana George is the author of The Essential Lenormand book and is a contributor to the Gilded Reverie Lenormand guidebook.', '2019-03-05 04:49:09', '2019-03-05 04:49:09'),
(295, 8, 37, 'Oracle of Visions', 'oracle-of-visions', '<p>Oracle of Visions by Ciro Marchetti &nbsp;<span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">Through lush, Victorian-influenced images, the Oracle of Visions deck offers unique perspectives for insightful and intuitive readings. Rather than relying on a single theme, this eclectic oracle deck introduces archetypal figures from many areas of life, including the theater and the carnival.&nbsp;</span><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">Ciro</span><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">&nbsp;</span><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">Marchetti&rsquo;s</span><span style=\"color:rgb(128, 128, 128); font-family:ingra-wide,sans-serif; font-size:14px\">&nbsp;imaginative scenes encourage us to set aside pre-conceived ideas and open ourselves up to new ways of looking at our choices, decisions, and potential outcomes. &nbsp;Oracle of Visions set includes 52 cards and 140-page illustrated guidebook.</span></p>', '22.99', NULL, NULL, '4.00', 0, '83719oracle of visions 2395.jpg', 0, 'Oracle of Visions', 'Oracle of Visions, ciro marchetti, oracle', 'Through lush, Victorian-influenced images, the Oracle of Visions deck offers unique perspectives for insightful and intuitive readings. Rather than relying on a single theme, this eclectic oracle deck introduces archetypal figures from many areas of life, including the theater and the carnival. Ciro Marchetti’s imaginative scenes encourage us to set aside pre-conceived ideas and open ourselves up to new ways of looking at our choices, decisions, and potential outcomes.  Oracle of Visions set includes 52 cards and 140-page illustrated guidebook.', '2019-03-05 04:53:00', '2019-03-05 04:55:26'),
(296, 8, 37, 'Medicine Cards Deck and Book Set', 'medicine-cards-deck-and-book-set', '<p>Discover the powerful divination system based on ancient Native America teachings and traditions. This revised and expanded edition of Medicine Cards is an attractively boxed set including an illustrated book and a beautifully rendered deck of 52 animal cards. Each card portrays an animal with a dream catcher.</p>\r\n\r\n<p>The Medicine Cards illustrated book explains how the cards can be used to receive guidance and healing messages from the animals.</p>\r\n\r\n<p>&quot;When you call upon the power of an animal, you are asking to be drawn into complete harmony with the strength of that animal&rsquo;s essence. Gaining understanding from these brothers and sisters is a healing process.</p>\r\n\r\n<p>&nbsp;</p>', '35.99', NULL, NULL, '6.00', 1, '79891medicinecards2995.jpg', 0, 'Medicine Cards Deck and Book Set', 'medicine cards, shaman, shamanism, animal totem, oracle, native american', 'Discover the powerful divination system based on ancient Native America teachings and traditions. This revised and expanded edition of Medicine Cards is an attractively boxed set including an illustrated book and a beautifully rendered deck of 52 animal cards. Each card portrays an animal with a dream catcher.\r\n\r\nThe Medicine Cards illustrated book explains how the cards can be used to receive guidance and healing messages from the animals.\r\n\r\n\"When you call upon the power of an animal, you are asking to be drawn into complete harmony with the strength of that animal’s essence. Gaining understanding from these brothers and sisters is a healing process.', '2019-03-05 05:00:07', '2019-03-05 05:00:07'),
(297, 8, 37, 'Hermetic Tarot', 'hermetic-tarot', '<p>Hermetic Tarot &nbsp;&nbsp;</p>\r\n\r\n<p>The details and symbols in each card reveal many of the esoteric workings of the&nbsp;<em>Secret Order of the Golden Dawn</em>, which flourished around the turn of the century.</p>\r\n\r\n<p>Godfrey Dowson&rsquo;s subtle black and white designs emphasize the Golden Dawn&rsquo;s astrological attributes with further sephirotic, angelic, geomantic, numerical, and kabbalistic elements. All 78 cards feature an exquisite level of detail that highlights the powerful symbolism.</p>\r\n\r\n<p>The 70-page instruction booklet includes an introduction by Stuart R. Kaplan and card meaning written by Godfrey Dowson and Stuart R. Kaplan. The booklet also gives instructions for the classic ten-card Celtic Cross layout and presents a chart of the elemental and astrological symbols, and a diagram of the ten spheres and 22 Hebrew Letters of the of the 22 Paths of the Tree of Life.</p>', '22.95', NULL, NULL, '4.00', NULL, '62676hermetictarot.jpg', 0, 'Hermetic Tarot', 'hermetic, golden dawn, tarot', 'hermetic tarot deck', '2019-03-05 05:06:04', '2019-03-05 05:06:04'),
(298, 8, 37, 'Kuan Yin Oracle', 'kuan-yin-oracle', '<h4>Kuan Yin Oracle: Blessings, Guidance &amp; Enlightenment From The Divine Feminine</h4>\r\n\r\n<p>Inspired by the Buddhist Goddess of Mercy and Compassion,&nbsp;KuanYin Oracle guides you to a place of inner peace and beauty.&nbsp;KuanYin&#39;s gentle energy reaches out to you from each of the 44 cards in this radiant deck.</p>\r\n\r\n<p>The messages contain her wisdom and provide a guiding presence to help you live an enlightened life. The 144-page illustrated guidebook provides inspirational messages, healing prayers, and practical exercises for each card.</p>', '23.99', NULL, NULL, '5.00', 1, '81768kuanyin.jpg', 0, 'Kuan Yin Oracle', 'kuan yin, divine feminine, buddhism, oracle, goddess of compassion', 'Kuan Yin Oracle: Blessings, Guidance & Enlightenment From The Divine Feminine\r\n\r\nInspired by the Buddhist Goddess of Mercy and Compassion, Kuan Yin Oracle guides you to a place of inner peace and beauty. Kuan Yin\'s gentle energy reaches out to you from each of the 44 cards in this radiant deck.\r\n\r\nThe messages contain her wisdom and provide a guiding presence to help you live an enlightened life. The 144-page illustrated guidebook provides inspirational messages, healing prayers, and practical exercises for each card.', '2019-03-05 05:15:08', '2019-03-05 05:15:08'),
(299, 1, 3, 'Rose Quartz Heart Pendant', 'rose-quartz-heart-pendant', '<p>Rose Quartz, the stone of love, carved into a nicely sized (30-40 mm wide) rose quartz pendant with included cord.</p>', '11.11', NULL, NULL, '3.00', NULL, '73334Pend-016-Rose-Quartz-Hearts-Pendants.jpg', 0, 'Rose Quartz Heart Pendant', 'rose quartz, stone of love, love, heart, pendant, necklace', 'Rose Quartz, the stone of love, carved into a nicely sized (30-40 mm wide) rose quartz pendant with included cord.', '2019-03-05 23:54:25', '2019-03-05 23:54:25'),
(300, 8, 38, 'Quartz Crystal Point Rune Set', 'quartz-crystal-point-rune-set', '<h4><span style=\"font-family:helvetica,arial,sans-serif\">Crystal Quartz is a gemstone of Pure Energy and Healing. Our Crystal Quartz Gemstone Runes are beautifully carved 25 piece sets with engraved lettering and hand painted in gold.&nbsp;Runes are often used in metaphysical practice as divination tools and sources of insight and wisdom. &nbsp; Includes a pouch and card with rune meanings.</span></h4>\r\n\r\n<h4><span style=\"font-family:helvetica,arial,sans-serif\">In many ancient cultures (notably&nbsp;Viking), runes&nbsp;have been used as intuitive guides into the present and future. &nbsp;</span><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Runes are an ancient Germanic alphabet, used for writing, divination and magick. They were used throughout northern Europe, Scandinavia, the British Isles, and Iceland from about 100 B.C.E. to 1600 C.E. Runic inscriptions of great age have even been found in North America, supporting stories that the Vikings arrived in the Americas long before Columbus. &nbsp;Since ancient times, runes have been used for divination and magic, in addition to writing. The word &quot;rune&quot; actually means mystery, secret or whisper. Each rune has esoteric meanings and properties associated with it, beyond its mundane meaning and phonetic value. Each translates into a word or a phrase signifying concepts important to the early peoples who used them, representing the forces of nature and mind. Each rune has a story attached to it, a relationship to a Norse God.</span></span></h4>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Futhark refers to the first seven letters in the runic alphabet.</span></span></p>', '24.95', NULL, NULL, '6.00', 0, '43294Rune-042-Crystal-Quartz-Pencil-Rune-Set.jpg', 0, 'Quartz Crystal Point Rune Set', 'quartz, crystal, rune set, runes, futhark, viking', 'Crystal Quartz is a gemstone of Pure Energy and Healing. Our Crystal Quartz Gemstone Runes are beautifully carved 25 piece sets with engraved lettering and hand painted in gold. Runes are often used in metaphysical practice as divination tools and sources of insight and wisdom.', '2019-03-06 00:09:36', '2019-03-31 03:48:11'),
(301, 6, 49, 'Small Tiger Eye Pyramid', 'small-tiger-eye-pyramid', '<p>Small natural polished&nbsp;tiger eye pyramid. &nbsp; Measures 25-35 mm. &nbsp; Each piece is unique. &nbsp; Tiger&#39;s Eye&nbsp;<span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">is a powerful stone to help you reach your goals and stay focused on what really matters. &nbsp; Protective and empowering with the added magic of the pyramids. &nbsp; Lore says that keeping a pyramid on your desk will help you stay foused.</span></p>', '6.99', NULL, NULL, '2.00', 0, '44797Pyr-042-Tiger-Eye-Small-Pyramids.jpg', 0, 'Tiger\'s Eye Pyramid', 'tiger eye, tiger\'s eye, pyramid, protection, focus', 'Small natural polished tiger eye pyramid.   Measures 25-35 mm.   Each piece is unique.   Tiger\'s Eye is a powerful stone to help you reach your goals and stay focused on what really matters.   Protective and empowering with the added magic of the pyramids.   Lore says that keeping a pyramid on your desk will help you stay foused.', '2019-03-06 00:44:10', '2019-03-09 00:43:19'),
(302, 6, 31, 'Quartz Crystal Merkaba', 'quartz-crystal-merkaba', '<p>Quartz Crystal Merkaba &nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">The word Merkaba is actually composed of three separate words: Mer, which means light, Ka, which means spirit and Ba, which means Body. Put together, these three words connote the union of spirit with the body, surrounded by light. The symbol, which takes the shape of a star, is believed to be a divine vehicle made entirely of light and designed to transport or connect the spirit and body to higher realms. &nbsp; Sacred geometry.</span></span></p>', '7.00', NULL, NULL, '3.00', 0, '72781merkaba.jpg', 0, 'Quartz Crystal Merkaba', 'quartz, crystal, merkaba, sacred geometry', 'Quartz Crystal Merkaba.  The word Merkaba is actually composed of three separate words: Mer, which means light, Ka, which means spirit and Ba, which means Body. Put together, these three words connote the union of spirit with the body, surrounded by light. The symbol, which takes the shape of a star, is believed to be a divine vehicle made entirely of light and designed to transport or connect the spirit and body to higher realms.', '2019-03-06 00:53:52', '2019-03-31 03:48:47'),
(303, 4, 21, 'Om White Tea and Thyme Scent Luxury Candle White', 'om-white-tea-and-thyme-scent-luxury-candle-white', '<ul>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">Each candle is hand poured in small batches, using our natural US grown, eco-friendly soy blend wax. Lead-free, cotton wicks provide a high quality, clean and soot free burning experience. The black glass candle is 9.0-Ounce with an approximate burn time 80 hours.</span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">White Tea Thyme is a bold and refreshing blend of citrus and white florals. Clean with a spa like aroma. Our candles are known for their superior ability to fill a room with a wonderful aroma in minutes with the finest fragrances available. White Tea Thyme helps create feelings of serenity and focus and at the same time uplifting which helps alleviate stress and aids in relaxation.</span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">SPIRITUAL DESIGN: Om is a sacred symbol known as the sound of universe. The ultimate mantra representing human consciousness and an expression of spiritual perfection and fulfillment. Meditating with Om helps harmonize your chakras and attune with the cosmic universal vibration. Re-purpose the glass after use to continue to enjoy its beauty.</span></li>\r\n</ul>', '34.99', NULL, NULL, '5.00', NULL, '59862IMG_0065.jpg', 0, 'White Tea and Thyme Om Candle', 'luxury candle, yoga candle, om', 'White Tea and Thyme candle with Om design', '2019-03-06 02:49:50', '2019-03-06 02:49:50'),
(304, 4, 21, 'Flower of Life Design Vanilla Scented Luxury Candle', 'flower-of-life-design-vanilla-scented-luxury-candle', '<ul>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">SMALL BATCH HAND POURED CANDLE: Each candle is hand poured in small batches, using our natural US grown, eco-friendly soy blend wax. Lead-free, cotton wicks provide a high quality, clean and soot free burning experience. The black glass candle is 9.0-Ounce with an approximate burn time 80 hours.</span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">PREMIUM FRAGRANCE: Exotic vanilla</span></li>\r\n	<li><span style=\"color:rgb(17, 17, 17)\">SPIRITUAL DESIGN: Flower of Life&nbsp;</span></li>\r\n</ul>', '34.99', NULL, NULL, '5.00', 0, '16206flower of life candle.jpg', 0, 'Flower of Life Design Vanilla Scented Luxury Candle', 'flower of life, candle, vanilla, luxury candle', 'SMALL BATCH HAND POURED CANDLE: Each candle is hand poured in small batches, using our natural US grown, eco-friendly soy blend wax. Lead-free, cotton wicks provide a high quality, clean and soot free burning experience. The black glass candle is 9.0-Ounce with an approximate burn time 80 hours.\r\nPREMIUM FRAGRANCE: Exotic vanilla\r\nSPIRITUAL DESIGN: Flower of Life', '2019-03-06 04:50:49', '2019-03-06 04:54:14'),
(305, 1, 3, 'Golden Quartz Healer Point Pendant', 'golden-quartz-healer-point-pendant', '<p>Reiki Charged Golden Quartz point pendant includes 30&quot; cord.</p>\r\n\r\n<p>Golden Quartz is a member of the Quartz family and carries the same broad characteristics as Clear Quartz but it also has additional properties which increase its spiritual healing abilities.&nbsp; Golden Quartz is therefore an excellent protective, energising and powerful cleansing stone. &nbsp;Quartz can particularly help to stimulate the thyroid and the thymus. It can help with digestive problems and also alleviate nausea.&nbsp; It can also benefit the immune system.&nbsp; It cleanses and enhances all the organs and strengthens all systems of the body. &nbsp;Golden Quartz is said to be particularly helpful for chronic fatigue, arthritis, fibromyalgia, depression, bone injuries and intestinal problems.</p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '2.00', NULL, '84718CapPen-007-Golden-Quartz--Cap-Pencil-Pendants.jpg', 0, 'Golden Quartz Healer Point Pendant', 'golden quartz, crystal healing, golden healer, pendant, Reiki charged', 'Reiki Charged Golden Quartz point pendant includes 30\" cord.', '2019-03-09 00:57:22', '2019-03-09 00:57:22'),
(306, 1, 3, 'Fluorite Crystal Point Pendant', 'fluorite-crystal-point-pendant', '<p>Reiki charged multi color Fluorite crystal point pendant includes 30&quot; cord. &nbsp;Colors vary from green to yellow to purple to stripes! &nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(34, 34, 34)\">Fluorite is a highly protective and stabilizing stone, useful for grounding and harmonizing spiritual&nbsp;</span><strong>energy</strong><span style=\"color:rgb(34, 34, 34)\">. When working with the upper&nbsp;</span><strong>Chakras</strong><span style=\"color:rgb(34, 34, 34)\">, Fluorite increases intuitive abilities, links the human mind to universal consciousness, and develops connection to Spirit. &nbsp; Fluorite helps cut your unwanted soul&nbsp;connections to the past.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', '11.11', NULL, NULL, '3.00', NULL, '31111fluorite.jpg', 0, 'Reiki Charged Multi color Fluorite pendant', 'Reiki charged, fluorite, pendant, intuition, cut soul connections, cord cutting, grounding', 'Reiki charged multi color Fluorite crystal point pendant includes 30\" cord.  Colors vary from green to yellow to purple to stripes!  \r\n\r\nFluorite is a highly protective and stabilizing stone, useful for grounding and harmonizing spiritual energy. When working with the upper Chakras, Fluorite increases intuitive abilities, links the human mind to universal consciousness, and develops connection to Spirit.   Fluorite helps cut your unwanted soul connections to the past.', '2019-03-09 01:02:14', '2019-03-09 01:02:14'),
(307, 6, 25, 'Amethyst Worry Stone', 'amethyst-worry-stone', '<p><strong>Worry stones</strong><span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">&nbsp;are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief. &nbsp;Our worry stones are made from natural crystals.</span></p>\r\n\r\n<p>Amethyst is known as one of the master Crystals when it comes to spirituality. It&nbsp;is the perfect stone for meditation. It is also the perfect calming antidote for rage and anger.&nbsp;</p>\r\n\r\n<p>It is a powerful protection stone creating a bubble around the carrier, warding off psychic attacks and negative energy. &nbsp;Amethyst relieves physical, emotional and psychological pain or stress. It&#39;s name actually comes from the Greek word meaning &quot;not drunk&quot; and&nbsp;is also seen as the sobering stone, very good for any and all forms of addiction. &nbsp;</p>\r\n\r\n<p>* &nbsp;Back in stock mid-April</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '5.00', NULL, NULL, '2.00', 0, '70417Worry-003-Amethyst-Worry-Stone.jpg', 0, 'Amethyst Worry Stone', 'amethyst, worry stone, pocket stone, thumb stone', 'Worry stones are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief.\r\n\r\nAmethyst is known as one of the master Crystals when it comes to spirituality. It is the perfect stone for meditation. It is also the perfect calming antidote for rage and anger.', '2019-03-09 01:11:56', '2019-03-09 01:48:47'),
(308, 6, 25, 'Rose Quartz Worry Stone', 'rose-quartz-worry-stone', '<p><strong>Worry stones</strong><span style=\"font-family:arial,sans-serif; font-size:small\">&nbsp;are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief. &nbsp;Our worry stones are made from natural crystals.</span></p>\r\n\r\n<p><span style=\"font-family:arial,sans-serif; font-size:small\">Rose Quartz emits a gentle, loving energy that is soothing, healing and assists with drawing love as well as loving others.</span></p>\r\n\r\n<p>*Back in stock mid-April</p>', '5.00', NULL, NULL, '2.00', 0, '84088Worry-001-Rose-Quartz-Worry-Stone.jpg', 0, 'Rose Quartz Worry Stone', 'rose quartz, love, worry stone, pocket stone, thumb stone', 'Worry stones are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief.  Our worry stones are made from natural crystals.  Rose Quartz worry stone.', '2019-03-09 01:21:40', '2019-03-09 01:48:16'),
(309, 6, 25, 'Labradorite Worry Stone', 'labradorite-worry-stone', '<p><strong>Worry stones</strong><span style=\"font-family:arial,sans-serif; font-size:small\">&nbsp;(thumb stones) are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief. &nbsp;Our worry stones are made from natural crystals.</span></p>\r\n\r\n<p><span style=\"font-family:arial,sans-serif; font-size:small\">Labradorite is a stone of dreams, intuition and magic. &nbsp;</span><span style=\"font-size:12px\"><span style=\"font-family:montserrat,sans-serif\">It said that labradorite awakens one&#39;s awareness to the powers of self-discovery, intuition, and destiny. &nbsp;</span></span><span style=\"font-family:arial,sans-serif; font-size:small\">Helps with anxiety, stress and depression.</span></p>\r\n\r\n<p>*This will be in stock in mid-April 2019</p>\r\n\r\n<p>&nbsp;</p>', '6.00', NULL, NULL, '2.00', 0, '85826Worry-018-Labrodrite-Worry-Stone.jpg', 0, 'Labradorite Worry Stone', 'labradorite, worry stone, pocket stone, thumb stone, intuition, dreams, magic', 'Worry stones are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief.  Our worry stones are made from natural crystals.\r\n\r\nLabradorite is a stone of dreams, intuition and magic.  It said that labradorite awakens one\'s awareness to the powers of self-discovery, intuition, and destiny.  Helps with anxiety, stress and depression.', '2019-03-09 01:40:47', '2019-03-31 03:45:03'),
(310, 6, 25, 'Aventurine Worry Stone', 'aventurine-worry-stone', '<p><strong>Worry stones</strong><span style=\"font-family:arial,sans-serif; font-size:small\">&nbsp;are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief. &nbsp;Our worry stones are made from natural crystals.</span></p>\r\n\r\n<p>Aventurine is an all-around good luck stone and great stone for general healing.</p>\r\n\r\n<p>*This product will be in stock in mid-April 2019</p>', '5.00', NULL, NULL, '2.00', 0, '67990Worry-020-Light-Aventurine-Worry-Stone.jpg', 0, 'Aventurine Worry Stone', 'Aventurine, worry stone, thumb stone, pocket stone, good luck, healing', 'Worry stones are smooth, polished gemstones, usually in the shape of an oval with a thumb-sized indentation, used for relaxation or anxiety relief.  Our worry stones are made from natural crystals.\r\n\r\nAventurine is an all-around good luck stone and great stone for general healing.', '2019-03-09 01:46:04', '2019-03-09 01:46:53'),
(311, 2, 2, 'Three Sided Kuan Yin Statue', 'three-sided-kuan-yin-statue', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:11px\">Kuan Yin, the Bodhisattva of compassion&nbsp;symbolizes kindness, love, compassion, pity, empathy, concern, or solicitude. These are not just emotions that are exhibited. This goddess symbolizes the divine love and energy that comes from enlightenment. She is the epitome of love. When one calls upon her, it is believed that she answers the cries (prayers) of the depressed beings. Thus, a statue of Kuan Yin is said to balance the energy levels of the place, as it cures all the ills.</span></span></p>', '33.00', NULL, NULL, '7.50', 0, '82549ytcthreesidedkuanyin.jpg', 0, 'Three Sided Kuan Yin Statue', 'Kuan Yin, Guan Yin, Kwan Yin, goddess, Bodhisattva, compassion', 'Kuan Yin symbolizes kindness, love, compassion, pity, empathy, concern, or solicitude. These are not just emotions that are exhibited. This goddess symbolizes the divine love and energy that comes from enlightenment. She is the epitome of love for her worshipers. When one calls upon her, it is believed that she answers the cries (prayers) of the depressed beings. Thus, a statue of Kuan Yin is said to balance the energy levels of the place, as it cures all the ills.', '2019-03-09 02:17:00', '2019-03-11 06:17:33'),
(312, 2, 2, 'Seated Lakshmi Statue', 'seated-lakshmi-statue', '<p>Seated Lakshmi statue &nbsp;5x 7h. &nbsp; Lakshmi is the Hindu goddess of beauty and prosperity.</p>', '39.99', NULL, NULL, '9.00', 0, '38907ytcseatedlaksmi.jpg', 0, 'Seated Lakshmi Statue', 'lakshmi, sitting lakshmi, goddess, hindu, beauty, prosperity, wealth', 'Seated Lakshmi statue  5x 7h.   Lakshmi is the Hindu goddess of beauty and prosperity.', '2019-03-09 02:21:08', '2019-03-11 06:14:11'),
(313, 1, 3, 'Raw Tourmaline Pendant', 'raw-tourmaline-pendant', '<p>Raw tourmaline with gold electroplate pendant. &nbsp;Includes 30&quot; cord. &nbsp; Tourmaline is a very protective stone. &nbsp;It clears negative energy. &nbsp;Tourmaline promotes&nbsp;<span style=\"color:rgb(84, 84, 84); font-family:arial,sans-serif; font-size:small\">&nbsp;faithfulness and ethics; dissipates grief and blocked emotions; makes open and tolerant; enhances love for truth and justice.</span></p>', '11.11', NULL, NULL, '3.00', NULL, '91352Electro-095-Black-Tourmaline-Natural-Raw-Pendants.jpg', 0, 'Raw Tourmaline Pendant', 'tourmaline, raw tourmaline, pendant, protection', 'Raw tourmaline with gold electroplate pendant.  Includes 30\" cord.   Tourmaline is a very protective stone.  It clears negative energy.  Tourmaline promotes  faithfulness and ethics; dissipates grief and blocked emotions; makes open and tolerant; enhances love for truth and justice.', '2019-03-09 23:57:34', '2019-03-09 23:57:34'),
(314, 2, 11, 'Maiden, Mother and Crone Statue', 'maiden-mother-and-crone-statue', '<p>Maiden, Mother and Crone statue by Veronese Design. &nbsp; Made of cold cast resin. &nbsp;Bronze &nbsp;&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">The apsects of the Triple Goddess:</span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">The Maiden is seen as the virginal young woman, or girl, who has not yet awakened. She is all about enchantment and new beginnings, youthful ideas and enthusiasm. She is associated with the waxing phase of the lunar cycle, as the moon grows from dark to full.​</span></span></p>\r\n\r\n<div class=\"comp mntl-sc-block mntl-sc-block-html\" id=\"mntl-sc-block_1-0-10\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; counter-reset: section 0; caret-color: rgb(40, 40, 40); color: rgb(40, 40, 40); font-family: Georgia, Times, \">\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">The Mother is the next phase in a woman&#39;s life. She is&nbsp;fertility and fecundity, abundance and growth, the gaining of knowledge. She is fulfillment&mdash;sexual, social, and emotional&mdash;and she is represented by&nbsp;the full moon. Springtime and early summer are her domain; as the earth becomes green and fertile, so does the Mother. A woman does not have to have biological children to embrace the role of Mother.</span></span></p>\r\n</div>\r\n\r\n<div class=\"comp mntl-sc-block mntl-sc-block-html\" id=\"mntl-sc-block_1-0-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; counter-reset: section 0; caret-color: rgb(40, 40, 40); color: rgb(40, 40, 40); font-family: Georgia, Times, \">\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\">Finally, the&nbsp;Crone aspect&nbsp;is the final stage. She is the hag and the wise woman, the darkness of night, and eventually death. She is&nbsp;<a href=\"https://www.thoughtco.com/moon-phases-and-magical-workings-2562405\" style=\"box-sizing: border-box; outline: 0px; color: rgb(0, 134, 166); text-decoration: none; transition: all 0.15s ease-in-out; box-shadow: rgb(0, 163, 201) 0px -2px 0px inset;\">t</a>he waning moon, the chill of winter, the dying of the earth.</span></span></p>\r\n</div>', '79.99', NULL, NULL, '7.00', 0, '26044maidenmothercroneunicorn.jpg', 0, 'Maiden, Mother, Crone Statue', 'maiden, mother, crone, triple goddess, goddess, Wicca, pagan', 'Maiden, Mother and Crone statue by Veronese Design.   Made of cold cast resin.  Bronze', '2019-03-11 04:34:54', '2019-03-11 06:10:53'),
(315, 2, 2, 'Ceramic Dhyana Buddha', 'ceramic-dhyana-buddha', '<p><span style=\"color:rgb(89, 89, 89); font-family:lato,helvetica neue,helvetica,arial,sans-serif; font-size:12px\">Buddha sitting on cushion. &nbsp;Ceramic&nbsp;with distressed ecru glazing. &nbsp;Dhyana Buddha indicates the perfect balance of thought, rest of the senses, and tranquillity. &nbsp;</span><span style=\"color:rgb(71, 61, 51); font-family:arial,helvetica,sans-serif; font-size:12px\">The&nbsp;</span>Dhyana mudra<span style=\"color:rgb(71, 61, 51); font-family:arial,helvetica,sans-serif; font-size:12px\">&nbsp;is the&nbsp;</span>gesture of meditation&nbsp;<span style=\"color:rgb(71, 61, 51); font-family:arial,helvetica,sans-serif; font-size:12px\">and of the concentration of the Good Law.</span></p>', '29.99', NULL, NULL, '12.00', NULL, '95660dhyanabuddhaworldbuyers.jpg', 0, 'Ceramic Dhyana Buddha', 'ceramic, buddha, dhyana, mudra, buddha statue', 'Buddha sitting on cushion.  Ceramic with distressed ecru glazing.  Dhyana Buddha indicates the perfect balance of thought, rest of the senses, and tranquillity.  The Dhyana mudra is the gesture of meditation and of the concentration of the Good Law.', '2019-03-11 05:45:01', '2019-03-11 05:45:01'),
(316, 3, 15, 'Blue Hamsa Incense Burner', 'blue-hamsa-incense-burner', '<p><span style=\"color:rgb(0, 0, 0); font-family:lato,helvetica neue,helvetica,arial,sans-serif\">Hamsa incense holder. Can also be a paperweight or a wall plaque! &nbsp;Blue with green, yellow and shades of red. &nbsp;</span><span style=\"font-size:12px\"><span style=\"color:rgb(0, 0, 0); font-family:lato,helvetica neue,helvetica,arial,sans-serif\">Product Dimensions 4 x 5.125 x.375&quot;H</span></span></p>', '12.99', NULL, NULL, '4.00', NULL, '91332blue hamsa incense burner.jpg', 0, 'Blue Hamsa Incense Burner', 'hamsa, incense burner, incense holder, paperweight, plaque', 'Hamsa incense holder. Can also be a paperweight or a wall plaque!  Blue with green, yellow and shades of red.  Product Dimensions 4 x 5.125 x.375\"H', '2019-03-11 05:50:59', '2019-03-11 05:50:59');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `description`, `price`, `discount`, `discount_price`, `shipping_price`, `best_seller`, `image`, `prd_cs_opt`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(317, 3, 15, 'Gold Hamsa Incense Burner', 'gold-hamsa-incense-burner', '<p>Gold Hamsa Incense Burner &nbsp;<span style=\"font-size:12px\"><span style=\"color:rgb(0, 0, 0); font-family:lato,helvetica neue,helvetica,arial,sans-serif\">Product Dimensions 4 x 5.125 x.375&quot;H</span></span></p>', '12.99', NULL, NULL, '4.00', NULL, '75626hamsagoldworldbuyers.jpg', 0, 'Gold Hamsa Incense Burner', 'hamsa, incense, burner, incense holder', 'Gold Hamsa Incense Burner  Product Dimensions 4 x 5.125 x.375\"H', '2019-03-11 05:56:02', '2019-03-11 05:56:02'),
(318, 4, 24, 'Witness Buddha Box', 'witness-buddha-box', '<p>Blue buddha box with gold accents. &nbsp; Product Dimensions 2.5x3.625x1.625&quot;H &nbsp; The witness mudra is also called the earth touching mudra. &nbsp;It represents the Buddha&#39;s moment of enlightenment.</p>\r\n\r\n<p>&nbsp;</p>', '15.99', NULL, NULL, '6.00', NULL, '52396witnessbuddhaboxworldbuyers2.jpg', 0, 'Blue Witness Buddha Box', 'buddha, box, witness buddha', 'Blue buddha box with gold accents.   Product Dimensions 2.5x3.625x1.625\"H', '2019-03-11 06:09:04', '2019-03-11 06:09:04'),
(319, 3, 16, 'Palo Santo Holy Wood', 'palo-santo-holy-wood', '<p>Palo Santo Holy Wood package &nbsp;&nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(68, 0, 0)\">Palo Santo is a mystical tree that grows on the coast of South America and is related to Frankincense, Myrrh and Copal. &nbsp;In Spanish, the name literally means &ldquo;Holy Wood&rdquo;. &nbsp;Palo Santo is enjoyed by many for its energetically cleansing and healing properties. &nbsp;It is a strong medicine that has been popularized for its heavenly presence in keeping energies grounded and clear. &nbsp;It creates a pleasant, fresh smoke .&nbsp; It provides an uplifting scent that raises your vibration in preparation for meditation and allows for a deeper connection to the Source of all creation. &nbsp;It is also said that Palo Santo enhances creativity and brings good fortune to those who are open to its magic.</span></span></span></p>', '14.99', NULL, NULL, '2.00', NULL, '74426palosanto.jpg', 0, 'Palo Santo Holy Wood', 'palo santo, holy wood, smudge, native american, shaman, shamanic', 'Palo Santo Holy Wood package   Palo Santo is a mystical tree that grows on the coast of South America and is related to Frankincense, Myrrh and Copal.  In Spanish, the name literally means “Holy Wood”.  Palo Santo is enjoyed by many for its energetically cleansing and healing properties.', '2019-03-11 22:21:41', '2019-03-11 22:21:41'),
(320, 3, 16, 'Palo Santo Cones', 'palo-santo-cones', '<p>Palo Santo Holy Wood &nbsp;cone incense &nbsp;&nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(68, 0, 0)\">Palo Santo is a mystical tree that grows on the coast of South America and is related to Frankincense, Myrrh and Copal. &nbsp;In Spanish, the name literally means &ldquo;Holy Wood&rdquo;. &nbsp;Palo Santo is enjoyed by many for its energetically cleansing and healing properties.</span></span></span></p>', '10.00', NULL, NULL, '3.00', NULL, '59894palosantocone.jpg', 0, 'Palo Santo Cones', 'palo santo, holy wood, smudge, palo santo incense', 'Palo Santo Holy Wood  cone incense   Palo Santo is a mystical tree that grows on the coast of South America and is related to Frankincense, Myrrh and Copal.  In Spanish, the name literally means “Holy Wood”.  Palo Santo is enjoyed by many for its energetically cleansing and healing properties.', '2019-03-11 22:26:50', '2019-03-11 22:26:50'),
(321, 3, 16, 'Smudge Kit', 'smudge-kit', '<p>Smudge Kit includes a small abalone shell, white sage smudge stick and sweetgrass braid.</p>', '14.99', NULL, NULL, '5.00', 1, '45344smudgekit.jpg', 0, 'Smudge Kit', 'smudge, white sage, abalone shell, sweetgrass, smudge kit, smudge package', 'Smudge Kit includes a small abalone shell, white sage smudge stick and sweetgrass braid.', '2019-03-11 22:33:33', '2019-03-11 22:33:59'),
(322, 3, 16, 'White Sage and Lavender', 'white-sage-and-lavender', '<p>Combination package of three white sage sticks and&nbsp;lavender flowers</p>', '14.99', NULL, NULL, '5.00', 1, '66146sageandlavender.jpg', 0, 'White Sage and Lavender', 'sage, white sage, california white sage, lavender, sage and lavender', 'Combination package of three white sage sticks and lavender flowers', '2019-03-11 22:37:48', '2019-03-11 22:38:04'),
(323, 3, 15, 'Large Abalone Shell', 'large-abalone-shell', '<p>Large abalone shell (tripod stand not included) for smudging</p>', '14.99', NULL, NULL, '6.00', NULL, '35606abalone shell.jpg', 0, 'Large Abalone Shell', 'abalone, shell,', 'Large abalone shell for smudging', '2019-03-11 22:43:18', '2019-03-11 22:43:18'),
(324, 3, 16, 'Deluxe Smudge Kit', 'deluxe-smudge-kit', '<p>Deluxe smudge kit has everything you need for clearing your space and drawing positive energy. &nbsp; Includes a large abalone shell, white sage, sweetgrass braid and palo santo holy wood.</p>', '21.99', NULL, NULL, '6.00', NULL, '86446deluxe smudge kit.jpg', 0, 'Deluxe Smudge Kit', 'smudge kit, abalone shell, palo santo, sweetgrass, white sage', 'Deluxe smudge kit has everything you need for clearing your space and drawing positive energy.   Includes a large abalone shell, white sage, sweetgrass braid and palo santo holy wood.', '2019-03-11 22:52:31', '2019-03-11 22:52:31'),
(325, 3, 14, 'Red Sandalwood Resin Incense', 'red-sandalwood-resin-incense', '<p>Red sandalwood resin incense &nbsp;&nbsp;<span style=\"font-size:12px\"><span style=\"font-family:-apple-system,blinkmacsystemfont,open sans,sans-serif\">Red Sandalwood has been valued for centuries for the qualities it possesses for carving, medical and spiritual purposes. It has been used for spiritual awareness, meditation, healing and purification. This resin should be burned on a charcoal tablet.</span></span></p>', '6.00', NULL, NULL, '3.00', NULL, '51536redsandalwood.jpg', 0, 'Red Sandalwood Resin Incense', 'sandalwood, resin, incense', 'Red sandalwood resin incense   Red Sandalwood has been valued for centuries for the qualities it possesses for carving, medical and spiritual purposes. It has been used for spiritual awareness, meditation, healing and purification. This resin should be burned on a charcoal tablet.', '2019-03-11 23:02:10', '2019-03-11 23:02:10'),
(326, 3, 16, 'Smudging Sampler Pack', 'smudging-sampler-pack', '<p>Deluxe smudging sampler includes desert sage, cedar, white sage, yerba sante, and palo santo holy wood.</p>', '21.99', NULL, NULL, '6.00', NULL, '87552smudging sampler.jpg', 0, 'Smudging Sampler Kit', 'smudge, sample, desert sage, cedar, white sage, yerba sante, palo santo', 'Deluxe smudging sampler includes desert sage, cedar, white sage, yerba sante, and palo santo holy wood.', '2019-03-11 23:12:32', '2019-03-11 23:12:32'),
(327, 2, 2, 'Kuan Yin Fountain', 'kuan-yin-fountain', '<p>14&quot; Blanc de chine porcelain Kuan Yin fountain. &nbsp; This is one of the traditional forms of Kuan Yin, bodhisattva of mercy and compassion. &nbsp; She is holding a water container that represents the spirit of charity, giving and kindness. &nbsp; This is a drip fountain. &nbsp; Pour a small amount of water into the mouth of the dragon, turn over the statue. &nbsp; When you set the statue upright, the water drips from her fountain into the dragon&#39;s mouth. &nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(34, 34, 34)\">The&nbsp;</span>dragon<span style=\"color:rgb(34, 34, 34)\">&nbsp;is also a&nbsp;</span><strong>symbol</strong><span style=\"color:rgb(34, 34, 34)\">of power, strength, and good luck for people who are worthy of it in East Asian&nbsp;</span>culture<span style=\"color:rgb(34, 34, 34)\">.</span></span></span></p>', '110.00', NULL, NULL, '0.00', NULL, '77042kuan yin fountain.jpg', 0, 'Kuan Yin Fountain', 'kuan yin, dragon, water jug, compassion, bodhisattva, buddhism, buddhist statue, chinese goddess', '14\" Blanc de chine porcelain Kuan Yin fountain.   This is one of the traditional forms of Kuan Yin, bodhisattva of mercy and compassion.   She is holding a water container that represents the spirit of charity, giving and kindness.   This is a drip fountain.   Pour a small amount of water into the mouth of the dragon, turn over the statue.   When you set the statue upright, the water drips from her fountain into the dragon\'s mouth.  The dragon is also a symbolof power, strength, and good luck for people who are worthy of it in East Asian culture.', '2019-03-11 23:39:41', '2019-03-11 23:39:41'),
(328, 4, 24, 'Distressed Finish Holding Hands Trinket Tray', 'distressed-finish-holding-hands-trinket-tray', '<p>Distressed finish hands trinket tray. &nbsp;Holds jewelry, crystals, candles or whatever you choose. &nbsp;Approximately 6&quot; &nbsp; Looks like an antique</p>\r\n\r\n<p>&nbsp;</p>', '12.99', NULL, NULL, '3.00', NULL, '51495holdinghandsworldbuyers.jpg', 0, 'Holding Hands Trinket Tray', 'hands, dish, bowl, tray, trinket', 'Distressed finish hands trinket tray.  Holds jewelry, crystals, candles or whatever you choose.  Approximately 6\"', '2019-03-12 00:00:29', '2019-03-12 00:00:29'),
(329, 6, 31, 'Wood Tripod Stand', 'wood-tripod-stand', '<p>6&quot; Wood tripod stand for shells or spheres. &nbsp; &nbsp; Shell is not included.</p>', '6.99', NULL, NULL, '2.00', 0, '52842tripodwith abalone.jpg', 0, '6\" Wood tripod stand for shells or spheres.', 'wood stand, crystal ball stand, sphere stand, shell', '6\" Wood tripod stand for shells or spheres.', '2019-03-12 00:20:18', '2019-03-12 00:21:46'),
(330, 3, 16, 'Frankincense Smudge Stick', 'frankincense-smudge-stick', '<p>Frankincense smudge stick</p>', '7.00', NULL, NULL, '3.00', NULL, '93028frankincensesmudge.jpg', 0, 'Frankincense Smudge Stick', 'frankincense, sage, smudge stick, smudge', 'Frankincense and sage smudge stick', '2019-03-12 00:47:55', '2019-03-12 00:47:55'),
(331, 3, 16, 'Myrrh Smudge Stick', 'myrrh-smudge-stick', '<p>Myrrh and sage smudge stick</p>', '7.00', NULL, NULL, '3.00', 0, '25328myrrhsmudge.jpg', 0, 'Myrrh Smudge Stick', 'myrrh, sage, smudge', 'Myrrh and sage smudge stick', '2019-03-12 00:51:36', '2019-03-12 00:53:10'),
(332, 2, 2, 'Green Tara Statue', 'green-tara-statue', '<p>Green Tara Statue &nbsp;</p>\r\n\r\n<p>Tara, a female Buddha and meditational deity, is one of the most popular goddesses in the Buddhist pantheon. She is considered to be the goddess of universal compassion who represents virtuous and enlightened activity.&nbsp;</p>\r\n\r\n<p>The word Tara itself is derived from the root &#39;tri&#39; (to cross), hence the implied meaning:&#39; the one who enables living beings to cross the Ocean of Existence and Suffering&#39;. Her compassion for living beings, her desire to save them from suffering, is said to be even stronger than a mother&#39;s love for her children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"border:0px; caret-color:rgb(88, 89, 91); color:rgb(88, 89, 91); font-family:tahoma,verdana,arial,helvetica,sans-serif; font-size:12px\" summary=\"Description\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">L: 5.25&quot; x W: 2.75&quot; x H: 6&quot;<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '39.99', NULL, NULL, '8.00', 0, '48432ytcgreentara.jpg', 0, 'Green Tara Statue', 'Green Tara, buddhist statue, buddhism, goddess, bodhisattva', 'Goddess Tara, a female Buddha and meditational deity, is arguably the most popular goddess in the Buddhist pantheon. She is considered to be the goddess of universal compassion who represents virtuous and enlightened activity.\r\n\r\nThe word Tara itself is derived from the root \'tri\' (to cross), hence the implied meaning:\' the one who enables living beings to cross the Ocean of Existence and Suffering\'. Her compassion for living beings, her desire to save them from suffering, is said to be even stronger than a mother\'s love for her children.', '2019-03-12 01:07:17', '2019-03-12 01:09:25'),
(333, 2, 2, 'Medicine Buddha Statue', 'medicine-buddha-statue', '<p>Medicine Buddha, Healer of Outer and Inner Sickness&nbsp;Statue &nbsp; 4&quot; x 3&quot; x 6&quot; h &nbsp; &nbsp;<span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"background-color:rgb(247, 254, 245); color:rgb(0, 0, 0)\">Medicine Buddha is an enlightened being who has unbiased compassion for all living beings. He protects living beings from physical and mental sickness and other dangers and obstacles, and helps them to eradicate the three poisons &ndash; attachment, hatred, and ignorance.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', '38.99', NULL, NULL, '7.00', NULL, '36854ytcmedicinebuddha.jpg', 0, 'Medicine Buddha Statue', 'medicine, buddha, healer, statue', 'Medicine Buddha, Healer of Outer and Inner Sickness Statue   4\" x 3\" x 6\" h    Medicine Buddha is an enlightened being who has unbiased compassion for all living beings. He protects living beings from physical and mental sickness and other dangers and obstacles, and helps them to eradicate the three poisons – attachment, hatred, and ignorance.', '2019-03-12 01:20:26', '2019-03-12 01:20:26'),
(334, 1, 7, '14 Kt Gold Plated Sterling Silver Evil Eye Necklace', '14-kt-gold-plated-sterling-silver-evil-eye-necklace', '<p>14 Kt Gold Plated Sterling Silver Evil Eye Necklace&nbsp;&nbsp;16&quot; long with 2&quot; extender. &nbsp;10 mm evil eye charm</p>', '44.99', NULL, NULL, '4.00', NULL, '56588goldevileyesilverdepot.jpg', 0, '14 Kt Gold Plated Sterling Silver Evil Eye Necklace', 'evil eye, gold, necklace, pendant', '14 Kt Gold Plated Sterling Silver Evil Eye Necklace.  16\" long with 2\" extender.  10 mm evil eye charm', '2019-03-12 02:15:23', '2019-03-12 02:15:23'),
(335, 1, 7, 'Sterling Silver Evil Eye Bracelet', 'sterling-silver-evil-eye-bracelet', '<p>Sterling Silver Evil Eye Bracelet&nbsp;&nbsp;7-7 1/2&quot;</p>', '19.99', NULL, NULL, '4.00', NULL, '60006silverdepotevilbraceletNAR9SBC-1356-SL.jpg', 0, 'Sterling Silver Evil Eye Bracelet', 'sterling silver, evil eye, bracelet', 'Sterling Silver Evil Eye Bracelet', '2019-03-12 02:24:51', '2019-03-12 02:24:51'),
(336, 1, 10, 'Sterling Silver St Christopher Pendant', 'sterling-silver-st-christopher-pendant', '<p>Sterling silver St. Christopher pendant &nbsp;21mm &nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:rgb(34, 34, 34)\">The&nbsp;</span>Saint Christopher<span style=\"color:rgb(34, 34, 34)\">&nbsp;Medal is one of the most popular around the world because of his significance in the Catholic faith. The&nbsp;</span>Saint Christopher<span style=\"color:rgb(34, 34, 34)\">&nbsp;medal is believed to&nbsp;</span>protect<span style=\"color:rgb(34, 34, 34)\">&nbsp;the wearer on his or her travels.</span></span></span></p>', '29.99', NULL, NULL, '4.00', NULL, '69537Sterling Silver St Christophersilverdep.jpg', 0, 'Sterling Silver Saint Christopher Pendant', 'sterling silver, saint christopher, st. christopher, pendant, medallion, protection', 'Sterling silver St. Christopher pendant  21mm  \r\n\r\nThe Saint Christopher Medal is one of the most popular around the world because of his significance in the Catholic faith. The Saint Christopher medal is believed to protect the wearer on his or her travels.', '2019-03-12 02:31:30', '2019-03-12 02:31:30'),
(337, 10, 51, 'Seaside Dreamcatcher', 'seaside-dreamcatcher', '<p>This jute dreamcatcher evokes the spirit of the calming sea. &nbsp; Seashells and tassels make it a lovely piece of decor. &nbsp; Center starfish is resin. &nbsp;&nbsp;</p>', '19.99', NULL, NULL, '5.00', NULL, '27284shelldreamcatcherworldbuyers.jpg', 0, 'Seaside Dreamcatcher', 'dreamcatcher, dream, catcher, sea, shells', 'This jute dreamcatcher evokes the spirit of the calming sea.   Seashells and tassels make it a lovely piece of decor.   Center starfish is resin.', '2019-03-13 05:42:18', '2019-03-13 05:42:18'),
(338, 4, 52, 'Mindful Flying Wish Paper Small kit', 'mindful-flying-wish-paper-small-kit', '<p><strong>New! &nbsp;In stock March 22</strong></p>\r\n\r\n<p>Relax. Calm your mind. Smile inside and <strong>be happy.</strong></p>\r\n\r\n<p>15 RED wishes<br />\r\n5 Platform cards in the MINDFUL design<br />\r\n1 Pencil and detailed instructions &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '0.00', NULL, NULL, '0.00', 0, '27191flyingwishM-Mindful-tile.png', 0, 'Mindful  Flying Wish Paper Small Kit', 'flying wish paper, wish paper that flies, mindful', 'Relax.  Calm your mind.  Smile inside and be happy.\r\nKit includes:  15 RED wishes\r\n5 Platform cards in the MINDFUL design\r\n1 Pencil and detailed instructions', '2019-03-14 06:26:47', '2019-03-14 06:46:54'),
(339, 4, 52, 'Suffragette Kitty Small Flying Wish Paper Kit', 'suffragette-kitty-small-flying-wish-paper-kit', '<p>A nod to female empowerment and glass ceilings that have been scratched but not quite shattered.&nbsp; The graphic surprise under the triangle when you open it?&nbsp; A little mouse with distinct orange hair. &nbsp;<strong>#suffragettekitty</strong></p>\r\n\r\n<p>15 PINK wishes<br />\r\n5 Platform cards in the SUFFRAGETTE KITTY design<br />\r\n1 Pencil and detailed instructions</p>', '11.00', NULL, NULL, '2.00', NULL, '84483flyingwishSUF_kitty.jpg', 0, 'Suffragette Kitty Flying Wish Paper Kit', 'kitty, suffragette, feminism, flying wish paper, wishes', 'A nod to female empowerment and glass ceilings that have been scratched but not quite shattered.  The graphic surprise under the triangle when you open it?  A little mouse with distinct orange hair.  #suffragettekitty\r\n\r\n \r\n15 PINK wishes\r\n5 Platform cards in the SUFFRAGETTE KITTY design\r\n1 Pencil and detailed instructions', '2019-03-14 06:32:13', '2019-03-14 06:32:13'),
(340, 4, 52, 'Unicorn Flying Wish Paper Kit', 'unicorn-flying-wish-paper-kit', '<p>Is this your spirit animal?&nbsp; If so, you&#39;re very popular right now!&nbsp; A master of transformation, the unicorn is a dreamer.&nbsp; Believe...because <strong>anything is possible!</strong></p>\r\n\r\n<p>15 PINK wishes<br />\r\n5 Platform cards in the UNICORN design<br />\r\n1 Pencil and detailed instructions</p>', '11.00', NULL, NULL, '2.00', NULL, '86875flyingwishUnicorn.jpg', 0, 'Unicorn Flying Wish Paper Kit', 'unicorn, flying wish paper', '`Is this your spirit animal?  If so, you\'re very popular right now!  A master of transformation, the unicorn is a dreamer.  Believe...because anything is possible!\r\n\r\n15 PINK wishes\r\n5 Platform cards in the UNICORN design\r\n1 Pencil and detailed instructions', '2019-03-14 06:37:30', '2019-03-14 06:37:30'),
(341, 4, 52, 'Just Bee Flying Wish Paper Kit', 'just-bee-flying-wish-paper-kit', '<p>A bee symbolizes productivity - BUSY BEE!&nbsp; You may be doing too much or not enough, or just <strong>seeking balance</strong> between the two.&nbsp; Plus, they make honey!</p>\r\n\r\n<p>15 PINK wishes<br />\r\n5 Platform cards in the JUST BEE design<br />\r\n1 Pencil and detailed instructions</p>', '11.00', NULL, NULL, '2.00', NULL, '11715JFlying wishustBee.jpg', 0, 'Just Bee Flying Wish Paper Kit', 'bee, flying wish paper, wishes', 'A bee symbolizes productivity - BUSY BEE!  You may be doing too much or not enough, or just seeking balance between the two.  Plus, they make honey!\r\n\r\n15 PINK wishes\r\n5 Platform cards in the JUST BEE design\r\n1 Pencil and detailed instructions', '2019-03-14 06:43:18', '2019-03-14 06:43:18'),
(342, 4, 52, 'Flying Prayer Paper Kit', 'flying-prayer-paper-kit', '<p><strong>Give fire to your voice and wings to your prayers.</strong>&nbsp;This design really captures the purest of wishing activities -&nbsp;how many times have you blown on a fresh-picked dandelion and watched your wishes fly into the sky?</p>\r\n\r\n<p>15 PURPLE wishes<br />\r\n5 Platform cards in the DANDELION &nbsp;design<br />\r\n1 Pencil and detailed instructions</p>', '11.00', NULL, NULL, '2.00', 1, '91149flyingprayerdandi.jpg', 0, 'Flying Prayer Paper Kit', 'flying wish paper, prayer,', 'Give fire to your voice and wings to your prayers. This design really captures the purest of wishing activities - how many times have you blown on a fresh-picked dandelion and watched your wishes fly into the sky?\r\n\r\n15 PURPLE wishes\r\n5 Platform cards in the DANDELION  design\r\n1 Pencil and detailed instructions', '2019-03-14 06:51:11', '2019-03-14 06:52:09'),
(343, 4, 52, 'Golden Om Flying Wish Paper Kit', 'golden-om-flying-wish-paper-kit', '<p><strong>There&#39;s power in a wish</strong>. Flying Wish Paper presents this Golden Om design as a spiritual tool for mediation and affirmation.&nbsp; Tranquil teals and rich metallic gold, with red Flying Wish Paper to represent energy, intensity, and life &#39;in the now.&#39;</p>\r\n\r\n<p>15 RED wishes<br />\r\n5 Platform cards in the GOLDEN OM design<br />\r\n1 Pencil and detailed instructions</p>', '11.00', NULL, NULL, '2.00', 1, '96241OM-onepencil.jpg', 0, 'Golden Om Flying Wish Paper', 'om, flying wish paper, flying paper', 'There\'s power in a wish. Flying Wish Paper presents this Golden Om design as a spiritual tool for mediation and affirmation.  Tranquil teals and rich metallic gold, with red Flying Wish Paper to represent energy, intensity, and life \'in the now.\'\r\n\r\n15 RED wishes\r\n5 Platform cards in the GOLDEN OM design\r\n1 Pencil and detailed instructions', '2019-03-14 06:55:34', '2019-03-14 06:55:34'),
(344, 5, 18, 'Triple Moon Pentacle Bells', 'triple-moon-pentacle-bells', '<p>Triple Moon Pentacle Bell</p>', '11.99', NULL, NULL, '3.00', NULL, '67141triplemoonbells.jpg', 0, 'Triple Moon Pentacle Bell', 'bells, chimes, triple moon, goddess, pentacle, wicca, wiccan', 'Triple Moon Pentacle Bell', '2019-03-16 23:19:16', '2019-03-16 23:19:16'),
(345, 5, 18, 'Brass Ankh Bell Chimes', 'brass-ankh-bell-chimes', '<p>Hanging brass Egyptian symbol&nbsp;Ankh with&nbsp;bells and beads. &nbsp;</p>', '11.99', NULL, NULL, '3.00', 0, '12741ankhbells.jpg', 0, 'Brass ankh with bells', 'brass, ankh,  bells, chimes, Egyptian symbol', 'Hanging brass Egyptian symbol Ankh with bells and beads.', '2019-03-16 23:32:30', '2019-04-26 03:55:01'),
(346, 1, 45, 'Om Sterling Silver Stud Earring', 'om-sterling-silver-stud-earring', '<p>Sterling Silver Om Stud Earrings &nbsp;(Aum)</p>', '10.00', NULL, NULL, '2.00', 0, '18662omstudnirvSPE-654.jpg', 0, 'Sterling Silver Om Stud Earring', 'Sterling Silver, Om, Stud Earring, aum', 'sterling silver stud earring with om symbol', '2019-03-29 01:16:41', '2019-03-31 03:43:21'),
(347, 1, 45, 'Sterling Silver Skull and Crossbones Stud Earring', 'sterling-silver-skull-and-crossbones-stud-earring', '<p>Sterling Silver Skull and Crossbones stud earrings</p>', '10.00', NULL, NULL, '3.00', 0, '36652skullnirvSPE-620.jpg', 0, 'Sterling Silver Skull and Crossbones Stud Earring', 'Sterling Silver, skull, skull and crossbones, stud, earring, stud earring', 'Sterling Silver skull and crossbones stud earrings', '2019-03-29 01:19:17', '2019-04-15 04:14:20'),
(348, 1, 45, 'Sterling Silver Ankh Symbol Stud Earrings', 'sterling-silver-ankh-symbol-stud-earrings', '<p>Sterling Silver Egyptian Ankh Symbol Stud Earrings &nbsp;</p>\r\n\r\n<p>PIxie Dust&#39;s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.</p>\r\n\r\n<p>&nbsp;</p>', '10.00', NULL, NULL, '3.00', 0, '95821ankhnirvSPE-564.jpg', 0, 'Sterling Silver Egyptian Ankh Symbol Stud Earrings', 'sterling, silver, egyptian, ankh, stud earrings, earrings, metaphysical', 'Sterling Silver Egyptian Ankh Symbol Earrings\r\nPIxie Dust\'s Sacred Symbol Jewelry line has metaphysical symbols representing many paths including New Age, Wicca, Buddhism, Hindu, Christian, Judiasm, Taoist, Humanist, Shamanism and Sacred Geometry.', '2019-03-29 01:43:46', '2019-04-01 00:36:20'),
(349, 1, 1, 'Test Product', 'test-product', '<p><span style=\"color:rgb(33, 37, 41); font-family:source sans pro,-apple-system,blinkmacsystemfont,segoe ui,roboto,helvetica neue,arial,sans-serif,apple color emoji,segoe ui emoji,segoe ui symbol; font-size:16px\">Description&nbsp;Description Description Description Description Description&nbsp;Description Description Description Description</span></p>', '5.00', 2, '4.90', '1.00', 0, '9242469537Sterling Silver St Christophersilverdep.jpg', 1, 'Test Product', 'Test Product', 'Test Product', '2019-07-10 00:07:43', '2019-07-10 00:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(15, 5, '25529IMG_1545.jpeg', '2019-01-25 11:29:19', '2019-01-25 11:29:19'),
(16, 4, '65858IMG_1547.jpeg', '2019-01-25 12:20:10', '2019-01-25 12:20:10'),
(17, 6, '89695IMG_1544 2.jpeg', '2019-01-25 12:21:17', '2019-01-25 12:21:17'),
(18, 7, '64375IMG_1543.jpeg', '2019-01-25 12:23:22', '2019-01-25 12:23:22'),
(19, 8, '83945IMG_1533.jpeg', '2019-01-25 12:27:29', '2019-01-25 12:27:29'),
(20, 9, '22602IMG_1531.jpeg', '2019-01-25 12:31:11', '2019-01-25 12:31:11'),
(21, 10, '86210IMG_1530.jpeg', '2019-01-25 12:34:04', '2019-01-25 12:34:04'),
(22, 11, '48020IMG_1528.jpeg', '2019-01-25 12:35:52', '2019-01-25 12:35:52'),
(23, 12, '50058fullsizeoutput_c2f.jpeg', '2019-02-01 22:27:05', '2019-02-01 22:27:05'),
(24, 13, '36743IMG_4379.JPG', '2019-02-01 22:32:11', '2019-02-01 22:32:11'),
(25, 14, '75644IMG_4382.JPG', '2019-02-01 22:36:26', '2019-02-01 22:36:26'),
(26, 15, '76644IMG_4375.JPG', '2019-02-01 22:41:47', '2019-02-01 22:41:47'),
(27, 16, '56023IMG_4372.JPG', '2019-02-01 23:08:35', '2019-02-01 23:08:35'),
(28, 17, '46616IMG_4373.JPG', '2019-02-01 23:11:51', '2019-02-01 23:11:51'),
(29, 18, '90012IMG_0612.JPG', '2019-02-01 23:16:53', '2019-02-01 23:16:53'),
(30, 19, '54043IMG_4391.JPG', '2019-02-01 23:20:21', '2019-02-01 23:20:21'),
(31, 20, '83832IMG_0573.JPG', '2019-02-02 03:01:15', '2019-02-02 03:01:15'),
(32, 21, '45761IMG_4384.JPG', '2019-02-02 03:22:42', '2019-02-02 03:22:42'),
(33, 22, '85163IMG_4388.JPG', '2019-02-02 03:41:31', '2019-02-02 03:41:31'),
(34, 23, '90342IMG_4389.JPG', '2019-02-02 03:48:52', '2019-02-02 03:48:52'),
(35, 24, '85382IMG_4387.JPG', '2019-02-02 03:56:00', '2019-02-02 03:56:00'),
(36, 25, '54858IMG_0452.JPG', '2019-02-02 04:02:47', '2019-02-02 04:02:47'),
(37, 26, '74959amethyst mala.jpeg', '2019-02-02 04:05:56', '2019-02-02 04:05:56'),
(38, 27, '85859IMG_3270.JPG', '2019-02-02 04:14:47', '2019-02-02 04:14:47'),
(39, 28, '56881IMG_0116.JPG', '2019-02-02 04:22:22', '2019-02-02 04:22:22'),
(40, 29, '14092crystal mala.jpeg', '2019-02-02 04:25:25', '2019-02-02 04:25:25'),
(41, 30, '98225opalite mala.jpg', '2019-02-02 04:28:29', '2019-02-02 04:28:29'),
(42, 31, '41313lava mala.jpg', '2019-02-02 04:52:07', '2019-02-02 04:52:07'),
(43, 32, '16774freya statue.jpg', '2019-02-02 05:03:24', '2019-02-02 05:03:24'),
(44, 33, '96247brigid.jpg', '2019-02-02 05:07:56', '2019-02-02 05:07:56'),
(46, 35, '52044cheering buddha2.jpg', '2019-02-02 05:34:37', '2019-02-02 05:34:37'),
(49, 36, '20373mini ganesh purple.jpg', '2019-02-02 05:51:01', '2019-02-02 05:51:01'),
(50, 37, '16289angel noble presence.jpg', '2019-02-02 06:08:25', '2019-02-02 06:08:25'),
(51, 38, '74770baby angel in wings.jpg', '2019-02-02 06:14:44', '2019-02-02 06:14:44'),
(52, 39, '55606IMG_0506.JPG', '2019-02-02 06:24:29', '2019-02-02 06:24:29'),
(53, 40, '92584IMG_0535.JPG', '2019-02-02 06:39:22', '2019-02-02 06:39:22'),
(55, 42, '82349cupid and psyche.jpg', '2019-02-02 23:56:16', '2019-02-02 23:56:16'),
(56, 43, '33039IMG_4391.JPG', '2019-02-03 00:23:22', '2019-02-03 00:23:22'),
(57, 44, '8367531250.jpg', '2019-02-03 07:20:25', '2019-02-03 07:20:25'),
(58, 45, '3460731307.jpg', '2019-02-03 07:27:16', '2019-02-03 07:27:16'),
(60, 47, '9175431336.jpg', '2019-02-03 07:35:04', '2019-02-03 07:35:04'),
(61, 48, '9166731343.jpg', '2019-02-03 07:39:31', '2019-02-03 07:39:31'),
(62, 49, '7849131505.jpg', '2019-02-03 07:49:05', '2019-02-03 07:49:05'),
(63, 50, '9629326323.jpg', '2019-02-03 07:55:59', '2019-02-03 07:55:59'),
(64, 51, '1277031126.jpg', '2019-02-03 08:02:03', '2019-02-03 08:02:03'),
(65, 52, '9281931160.jpg', '2019-02-03 08:08:10', '2019-02-03 08:08:10'),
(66, 53, '9224598507.jpg', '2019-02-03 08:26:51', '2019-02-03 08:26:51'),
(67, 54, '2066698505.jpg', '2019-02-03 08:31:58', '2019-02-03 08:31:58'),
(68, 55, '4989298546.jpg', '2019-02-03 08:35:06', '2019-02-03 08:35:06'),
(69, 56, '3315298516.jpg', '2019-02-03 08:38:47', '2019-02-03 08:38:47'),
(70, 57, '9237398517.jpg', '2019-02-03 08:41:12', '2019-02-03 08:41:12'),
(71, 58, '9490198511.jpg', '2019-02-03 08:44:50', '2019-02-03 08:44:50'),
(72, 59, '2828898573.jpg', '2019-02-03 08:47:11', '2019-02-03 08:47:11'),
(73, 60, '7506898593.jpg', '2019-02-03 08:52:01', '2019-02-03 08:52:01'),
(74, 61, '4095098614.jpg', '2019-02-03 08:54:36', '2019-02-03 08:54:36'),
(75, 62, '6483998613.jpg', '2019-02-03 08:57:04', '2019-02-03 08:57:04'),
(76, 63, '3198198665.jpg', '2019-02-03 09:02:53', '2019-02-03 09:02:53'),
(77, 64, '2146698618.jpg', '2019-02-03 09:05:34', '2019-02-03 09:05:34'),
(78, 65, '3915398501.jpg', '2019-02-03 09:08:13', '2019-02-03 09:08:13'),
(79, 66, '9611398567.jpg', '2019-02-03 09:11:58', '2019-02-03 09:11:58'),
(80, 67, '5684698612.jpg', '2019-02-03 09:15:25', '2019-02-03 09:15:25'),
(81, 68, '1878398554.jpg', '2019-02-03 09:18:10', '2019-02-03 09:18:10'),
(82, 69, '4866698503.jpg', '2019-02-03 09:22:20', '2019-02-03 09:22:20'),
(83, 70, '8081698545.jpg', '2019-02-03 09:26:58', '2019-02-03 09:26:58'),
(84, 71, '1283898515.jpg', '2019-02-03 19:19:12', '2019-02-03 19:19:12'),
(85, 72, '6445598598.jpg', '2019-02-03 19:27:27', '2019-02-03 19:27:27'),
(86, 73, '1321099098.jpg', '2019-02-03 19:55:32', '2019-02-03 19:55:32'),
(87, 74, '6713699112.jpg', '2019-02-03 20:02:16', '2019-02-03 20:02:16'),
(88, 75, '2052299092.jpg', '2019-02-03 20:07:57', '2019-02-03 20:07:57'),
(89, 76, '5397699188.jpg', '2019-02-03 20:13:14', '2019-02-03 20:13:14'),
(90, 77, '2175298903.jpg', '2019-02-03 20:19:31', '2019-02-03 20:19:31'),
(91, 78, '5445495009.jpg', '2019-02-03 20:26:08', '2019-02-03 20:26:08'),
(92, 79, '9440098900.jpg', '2019-02-03 20:29:27', '2019-02-03 20:29:27'),
(93, 80, '53761silvercrescentmoon pentagram.jpg', '2019-02-03 20:37:40', '2019-02-03 20:37:40'),
(94, 81, '11799pentaclenirvana.jpg', '2019-02-03 20:50:42', '2019-02-03 20:50:42'),
(95, 82, '1254889102.jpg', '2019-02-03 20:55:14', '2019-02-03 20:55:14'),
(96, 83, '28367IMG_4377.JPG', '2019-02-04 02:53:12', '2019-02-04 02:53:12'),
(97, 84, '28339IMG_4370.JPG', '2019-02-04 02:56:57', '2019-02-04 02:56:57'),
(98, 85, '45471IMG_4380.JPG', '2019-02-04 03:07:44', '2019-02-04 03:07:44'),
(99, 86, '73206IMG_4383.JPG', '2019-02-04 03:15:15', '2019-02-04 03:15:15'),
(100, 87, '12653IMG_4386.JPG', '2019-02-04 03:19:21', '2019-02-04 03:19:21'),
(101, 88, '13613IMG_0614.JPG', '2019-02-04 03:23:44', '2019-02-04 03:23:44'),
(102, 89, '55739fullsizeoutput_cb8.jpeg', '2019-02-04 03:33:02', '2019-02-04 03:33:02'),
(103, 90, '91517IMG_0707.JPG', '2019-02-04 03:46:29', '2019-02-04 03:46:29'),
(104, 91, '39709IMG_4385.JPG', '2019-02-04 07:33:32', '2019-02-04 07:33:32'),
(105, 92, '14495rootchakrabell.jpg', '2019-02-05 03:06:56', '2019-02-05 03:06:56'),
(106, 93, '17985sacralchakrabell-91041o.jpg', '2019-02-05 03:26:35', '2019-02-05 03:26:35'),
(107, 94, '48642solarplexusbell-91041-y.jpg', '2019-02-05 03:53:02', '2019-02-05 03:53:02'),
(108, 95, '12963heartbell-91041-g.jpg', '2019-02-05 03:57:26', '2019-02-05 03:57:26'),
(109, 96, '94156throatchakrabell-91041s.jpg', '2019-02-05 04:03:35', '2019-02-05 04:03:35'),
(110, 97, '74934thirdeyechakrabell.jpg', '2019-02-05 04:09:51', '2019-02-05 04:09:51'),
(111, 98, '97167thirdeyechakrabell.jpg', '2019-02-05 04:20:54', '2019-02-05 04:20:54'),
(112, 99, '75901buddhabell.jpg', '2019-02-05 04:28:30', '2019-02-05 04:28:30'),
(114, 101, '63885Heart in Cranberry Shredded Paper.jpg', '2019-02-05 04:38:56', '2019-02-05 04:38:56'),
(115, 102, '22813Star in Blue Shredded Paper.png', '2019-02-05 06:07:31', '2019-02-05 06:07:31'),
(116, 103, '49830Rounded Bowl in Box with Ribbons.png', '2019-02-05 06:11:23', '2019-02-05 06:11:23'),
(117, 104, '78190IMG_0497.JPG', '2019-02-07 03:25:31', '2019-02-07 03:25:31'),
(118, 105, '81648Orgcab-067-Assorted-Stones-Orgonite-Oval.jpg', '2019-02-07 03:39:09', '2019-02-07 03:39:09'),
(120, 106, '26346Orgpoint-002-Energy-Orgone-Tower-with-Crystal-Point.jpg', '2019-02-07 04:01:05', '2019-02-07 04:01:05'),
(121, 107, '87337IMG_0731.JPG', '2019-02-07 04:06:26', '2019-02-07 04:06:26'),
(122, 108, '18816gratitude.jpg', '2019-02-07 04:18:45', '2019-02-07 04:18:45'),
(123, 109, '98643IMG_0719.JPG', '2019-02-07 04:51:50', '2019-02-07 04:51:50'),
(126, 112, '78822pentagramathame.jpg', '2019-02-07 05:22:48', '2019-02-07 05:22:48'),
(127, 113, '62985Goddess athame.jpg', '2019-02-07 05:26:55', '2019-02-07 05:26:55'),
(128, 114, '74853triquetraathame.jpg', '2019-02-07 05:32:41', '2019-02-07 05:32:41'),
(129, 115, '38406Wooden twisted wand New October 2018.jpg', '2019-02-07 05:42:59', '2019-02-07 05:42:59'),
(130, 116, '74629El-Reiki-004-Crystal-Quartz-directionals.jpg', '2019-02-07 06:05:23', '2019-02-07 06:05:23'),
(131, 117, '89498El-Reiki-minialtar-Element-Set-with-Pentagra.jpg', '2019-02-07 06:09:26', '2019-02-07 06:09:26'),
(132, 118, '31332Tree-002-Amethyst-Tee-300pcs-Chips.jpg', '2019-02-07 06:13:44', '2019-02-07 06:13:44'),
(133, 119, '45266salt lamp medium1.jpg', '2019-02-07 06:22:54', '2019-02-07 06:22:54'),
(134, 120, '18132FireBowlLamp1.jpg', '2019-02-07 06:28:02', '2019-02-07 06:28:02'),
(135, 121, '17699Reiki-085-Double-Embossed-Engraved-Usui-Reiki-Set.jpg', '2019-02-07 16:18:47', '2019-02-07 16:18:47'),
(136, 122, '88092IMG_0732.JPG', '2019-02-07 16:22:32', '2019-02-07 16:22:32'),
(137, 123, '33852IMG_0609.JPG', '2019-02-07 16:28:07', '2019-02-07 16:28:07'),
(139, 125, '61613IMG_0729.JPG', '2019-02-07 16:39:27', '2019-02-07 16:39:27'),
(140, 126, '39509IMG_0728.JPG', '2019-02-07 16:42:49', '2019-02-07 16:42:49'),
(141, 127, '14084IMG_0726.JPG', '2019-02-07 16:51:42', '2019-02-07 16:51:42'),
(142, 128, '935976D469D97-42A9-43E1-B648-F25FAE9417E7.jpg', '2019-02-07 16:58:05', '2019-02-07 16:58:05'),
(143, 129, '55499IMG_0727.JPG', '2019-02-07 17:07:52', '2019-02-07 17:07:52'),
(144, 130, '859336D469D97-42A9-43E1-B648-F25FAE9417E7.jpg', '2019-02-07 17:13:30', '2019-02-07 17:13:30'),
(145, 131, '29095IMG_0725.JPG', '2019-02-07 17:21:01', '2019-02-07 17:21:01'),
(146, 132, '90136small blue buddha.jpg', '2019-02-07 17:33:43', '2019-02-07 17:33:43'),
(147, 133, '37042bluebuddha.jpg', '2019-02-07 17:36:02', '2019-02-07 17:36:02'),
(151, 135, '93704youngbuddhaprayinggsc.jpg', '2019-02-07 17:44:42', '2019-02-07 17:44:42'),
(152, 136, '47139bluedragonon geode.jpg', '2019-02-07 17:48:57', '2019-02-07 17:48:57'),
(153, 137, '67350dragonandbaby.jpg', '2019-02-07 17:52:50', '2019-02-07 17:52:50'),
(154, 138, '24732blackandwhite.jpg', '2019-02-07 17:57:37', '2019-02-07 17:57:37'),
(155, 139, '26599bluepurplesleepingfairy.jpg', '2019-02-07 18:02:15', '2019-02-07 18:02:15'),
(156, 140, '40152unicorngsc.jpg', '2019-02-07 18:07:05', '2019-02-07 18:07:05'),
(157, 141, '52876woodlike elephant trinket box.jpg', '2019-02-07 18:20:47', '2019-02-07 18:20:47'),
(158, 142, '59058plushbastet.jpg', '2019-02-07 18:29:58', '2019-02-07 18:29:58'),
(160, 124, '34512Eng-Word-282-Engraved-Love-Symbol-Stones.jpg', '2019-02-07 23:55:05', '2019-02-07 23:55:05'),
(161, 143, '46420Selenite Skyscraper Lamp Medium.jpg', '2019-02-08 02:48:38', '2019-02-08 02:48:38'),
(163, 145, '63680earthluxeselenitelamp.jpg', '2019-02-08 03:15:29', '2019-02-08 03:15:29'),
(164, 146, '77717heartSaltLampShape_100150.jpg', '2019-02-08 03:22:48', '2019-02-08 03:22:48'),
(165, 147, '20888Relaxed-Tin.jpg', '2019-02-08 03:53:31', '2019-02-08 03:53:31'),
(166, 148, '43445Loved-Tin.jpg', '2019-02-08 04:00:19', '2019-02-08 04:00:19'),
(167, 149, '60862Inspired-Tin.jpg', '2019-02-08 04:20:00', '2019-02-08 04:20:00'),
(168, 150, '33868fullsizeoutput_c72.jpeg', '2019-02-08 04:40:57', '2019-02-08 04:40:57'),
(170, 151, '27376fullsizeoutput_c79.jpeg', '2019-02-08 05:03:55', '2019-02-08 05:03:55'),
(171, 152, '13821whitemermaid.jpg', '2019-02-08 05:07:35', '2019-02-08 05:07:35'),
(172, 153, '86171omofferingbowl.jpg', '2019-02-08 05:15:01', '2019-02-08 05:15:01'),
(173, 154, '31424triquetra.jpg', '2019-02-08 05:23:10', '2019-02-08 05:23:10'),
(175, 156, '13084black onyx runes.jpg', '2019-02-08 05:57:12', '2019-02-08 05:57:12'),
(176, 157, '62096IMG_0529.JPG', '2019-02-08 15:20:28', '2019-02-08 15:20:28'),
(177, 158, '97340IMG_0523.JPG', '2019-02-08 15:22:58', '2019-02-08 15:22:58'),
(178, 159, '87340IMG_0528.JPG', '2019-02-08 15:26:12', '2019-02-08 15:26:12'),
(179, 160, '58980IMG_0531.JPG', '2019-02-08 15:28:50', '2019-02-08 15:28:50'),
(180, 161, '98601IMG_0530.JPG', '2019-02-08 15:31:17', '2019-02-08 15:31:17'),
(181, 162, '35922IMG_0521.JPG', '2019-02-08 15:33:59', '2019-02-08 15:33:59'),
(182, 163, '31100IMG_0522.JPG', '2019-02-08 15:36:46', '2019-02-08 15:36:46'),
(183, 164, '47072IMG_0527.JPG', '2019-02-08 15:39:11', '2019-02-08 15:39:11'),
(184, 165, '12650IMG_0525.JPG', '2019-02-08 15:41:47', '2019-02-08 15:41:47'),
(185, 166, '66921IMG_0516.JPG', '2019-02-08 15:44:38', '2019-02-08 15:44:38'),
(187, 168, '38374chakra stone set with pouch.jpg', '2019-02-11 08:47:59', '2019-02-11 08:47:59'),
(188, 169, '83817minichakra.jpg', '2019-02-11 09:00:08', '2019-02-11 09:00:08'),
(189, 170, '66140Tree-Pend-015-Chakra-Stone-Tree-of-Life-Pendants.jpg', '2019-02-11 09:06:08', '2019-02-11 09:06:08'),
(190, 171, '96063Mala-052-Green-Jade-Japa-Mala-108-Beads.jpg', '2019-02-11 09:12:14', '2019-02-11 09:12:14'),
(193, 174, '44340bagua convex.jpg', '2019-02-11 22:51:31', '2019-02-11 22:51:31'),
(194, 175, '49444bagua.jpg', '2019-02-11 22:53:42', '2019-02-11 22:53:42'),
(195, 176, '6391335216.jpg', '2019-02-11 22:57:46', '2019-02-11 22:57:46'),
(196, 177, '96996moneyfrogsmall.jpg', '2019-02-11 23:02:37', '2019-02-11 23:02:37'),
(197, 178, '75682welcomedragon.jpg', '2019-02-12 02:03:51', '2019-02-12 02:03:51'),
(198, 179, '38559dragon stapler.jpg', '2019-02-12 02:05:55', '2019-02-12 02:05:55'),
(199, 180, '28965unconditional surrender.jpg', '2019-02-12 02:16:02', '2019-02-12 02:16:02'),
(200, 181, '51824ArchMichael.jpg', '2019-02-12 15:11:48', '2019-02-12 15:11:48'),
(201, 182, '53472archraphaelsm.jpg', '2019-02-12 15:14:58', '2019-02-12 15:14:58'),
(202, 183, '85727archgabrielsm.jpg', '2019-02-12 15:17:18', '2019-02-12 15:17:18'),
(203, 184, '52726spiralgoddess.jpg', '2019-02-12 15:21:58', '2019-02-12 15:21:58'),
(204, 185, '28952wheelofthe year.jpg', '2019-02-12 15:25:07', '2019-02-12 15:25:07'),
(205, 186, '167576coinredhanger.jpg', '2019-02-12 15:31:02', '2019-02-12 15:31:02'),
(206, 187, '83682mothermaidencroneincense.jpg', '2019-02-12 15:36:37', '2019-02-12 15:36:37'),
(207, 188, '42725hornedgod.jpg', '2019-02-12 15:41:56', '2019-02-12 15:41:56'),
(209, 190, '30672abalone shell.jpg', '2019-02-12 16:03:19', '2019-02-12 16:03:19'),
(210, 191, '34457whitesagesmudge.jpg', '2019-02-12 16:12:00', '2019-02-12 16:12:00'),
(211, 192, '81929nagchampa.jpg', '2019-02-12 16:23:50', '2019-02-12 16:23:50'),
(212, 193, '45787needcoffee.jpg', '2019-02-12 16:29:29', '2019-02-12 16:29:29'),
(213, 194, '21341relaxmermaid.jpg', '2019-02-12 16:31:17', '2019-02-12 16:31:17'),
(214, 195, '89858yogafrog.jpg', '2019-02-12 16:35:16', '2019-02-12 16:35:16'),
(215, 196, '47882fengshuitree.jpg', '2019-02-12 16:40:55', '2019-02-12 16:40:55'),
(216, 197, '45831guasha.jpg', '2019-02-12 16:53:15', '2019-02-12 16:53:15'),
(217, 198, '29271jaderoller.jpg', '2019-02-12 16:56:49', '2019-02-12 16:56:49'),
(218, 34, '59116jizo with bib-2.jpg', '2019-02-13 01:21:05', '2019-02-13 01:21:05'),
(219, 173, '51903purpleagateslice chime-2.jpg', '2019-02-13 01:23:00', '2019-02-13 01:23:00'),
(220, 172, '87154celestialacrylicchime-2.jpg', '2019-02-13 01:23:59', '2019-02-13 01:23:59'),
(221, 199, '15335blueagateslicechime-2.jpg', '2019-02-13 01:27:15', '2019-02-13 01:27:15'),
(222, 200, '42714naturalagateslicechime-2.jpg', '2019-02-13 01:29:19', '2019-02-13 01:29:19'),
(223, 201, '59967veroneseodin.jpg', '2019-02-13 01:53:05', '2019-02-13 01:53:05'),
(224, 202, '43704odinonsleipnirunicorn.jpg', '2019-02-13 01:59:48', '2019-02-13 01:59:48'),
(225, 203, '87781wu77294a4-bronze-steampunk-heart-trinket-box-by-myles-pinkney-veronese-collection__61581.1537796750.jpg', '2019-02-13 02:11:44', '2019-02-13 02:11:44'),
(226, 204, '28411stretching-merman-figurine-3.jpg', '2019-02-13 02:15:14', '2019-02-13 02:15:14'),
(228, 144, '79403Selenite Round Flat Top Lamps2.jpg', '2019-02-13 02:24:50', '2019-02-13 02:24:50'),
(229, 205, '78115IMG_0245.JPG', '2019-02-15 00:19:19', '2019-02-15 00:19:19'),
(230, 206, '90935tibetanropeincense.jpg', '2019-02-15 07:45:54', '2019-02-15 07:45:54'),
(231, 207, '86124healingtibetan.jpg', '2019-02-15 07:53:35', '2019-02-15 07:53:35'),
(232, 208, '2180172734.jpg', '2019-02-15 08:10:44', '2019-02-15 08:10:44'),
(233, 209, '6343472745.jpg', '2019-02-15 08:17:03', '2019-02-15 08:17:03'),
(234, 210, '4617272735.jpg', '2019-02-15 08:20:08', '2019-02-15 08:20:08'),
(235, 211, '9455672742.jpg', '2019-02-15 08:22:49', '2019-02-15 08:22:49'),
(236, 212, '2171772744.jpg', '2019-02-15 08:25:33', '2019-02-15 08:25:33'),
(237, 213, '7508072746.jpg', '2019-02-15 08:29:54', '2019-02-15 08:29:54'),
(238, 214, '8082589455.jpg', '2019-02-15 08:36:45', '2019-02-15 08:36:45'),
(239, 215, '36428prayerflag.jpg', '2019-02-15 09:05:48', '2019-02-15 09:05:48'),
(240, 216, '6762887221.jpg', '2019-02-15 23:11:53', '2019-02-15 23:11:53'),
(241, 217, '3043165013.jpg', '2019-02-15 23:19:37', '2019-02-15 23:19:37'),
(242, 218, '79501vitruvian man.jpg', '2019-02-18 00:33:08', '2019-02-18 00:33:08'),
(243, 219, '41152lunch-with-a-toothpick-figurine-4.jpg', '2019-02-18 00:38:44', '2019-02-18 00:38:44'),
(245, 220, '146568999Brushwith magick.jpg', '2019-02-18 00:45:07', '2019-02-18 00:45:07'),
(247, 221, '39819steampunkstilettoironopolis.jpg', '2019-02-18 00:54:40', '2019-02-18 00:54:40'),
(248, 222, '95972dianawithdeer.jpg', '2019-02-18 00:58:08', '2019-02-18 00:58:08'),
(249, 223, '63185hecate.jpg', '2019-02-18 01:05:20', '2019-02-18 01:05:20'),
(250, 224, '75206st joseph home seller kit.jpg', '2019-02-18 01:16:51', '2019-02-18 01:16:51'),
(251, 225, '34778st joseph home seller kit.jpg', '2019-02-18 01:18:37', '2019-02-18 01:18:37'),
(252, 226, '59732largeganesha.jpg', '2019-02-18 01:30:59', '2019-02-18 01:30:59'),
(253, 227, '71231rosequartzamberteething.jpg', '2019-02-18 02:47:23', '2019-02-18 02:47:23'),
(254, 228, '63456amber-teething-necklace-withamethyst.jpg', '2019-02-18 02:51:25', '2019-02-18 02:51:25'),
(255, 229, '98317wholesale-amber-teething-necklace-29.jpg', '2019-02-18 03:00:20', '2019-02-18 03:00:20'),
(256, 230, '20087darkamberteething.jpg', '2019-02-18 03:02:51', '2019-02-18 03:02:51'),
(257, 231, '75601multiamberteething.jpg', '2019-02-18 03:07:44', '2019-02-18 03:07:44'),
(259, 233, '51089largeevileye.jpg', '2019-02-18 23:49:42', '2019-02-18 23:49:42'),
(260, 234, '46072BL32003.jpg', '2019-02-18 23:55:11', '2019-02-18 23:55:11'),
(261, 235, '23717heartevileye.jpg', '2019-02-19 00:09:21', '2019-02-19 00:09:21'),
(262, 236, '91287Rune-001-Rose-Quartz-Rune-Set.jpg', '2019-02-19 00:39:18', '2019-02-19 00:39:18'),
(263, 237, '32855Rune-020-Indian-Amethyst-Rune-Stone-Set.jpg', '2019-02-19 00:41:03', '2019-02-19 00:41:03'),
(265, 238, '51101dousing rods.jpg', '2019-02-19 00:54:44', '2019-02-19 00:54:44'),
(266, 239, '23669selenite.jpg', '2019-02-19 01:20:28', '2019-02-19 01:20:28'),
(268, 111, '21813Selenite Knives Small.jpg', '2019-02-19 01:44:53', '2019-02-19 01:44:53'),
(271, 240, '99428cauldron.jpg', '2019-02-19 06:41:20', '2019-02-19 06:41:20'),
(272, 241, '43367pentagram altar tile.jpg', '2019-02-19 06:52:01', '2019-02-19 06:52:01'),
(273, 242, '89765cross.jpg', '2019-02-19 07:05:09', '2019-02-19 07:05:09'),
(274, 243, '83587om necklace.jpg', '2019-02-19 07:09:17', '2019-02-19 07:09:17'),
(275, 244, '74084BL17001.jpg', '2019-02-19 07:25:06', '2019-02-19 07:25:06'),
(277, 246, '62810buddha child on elephant.jpg', '2019-02-21 04:31:34', '2019-02-21 04:31:34'),
(278, 247, '89904buddha stud earring.jpg', '2019-02-21 04:37:20', '2019-02-21 04:37:20'),
(279, 248, '68179IMG_4370.JPG', '2019-02-21 04:40:45', '2019-02-21 04:40:45'),
(280, 249, '83841fullsizeoutput_c31.jpeg', '2019-02-21 04:44:29', '2019-02-21 04:44:29'),
(282, 250, '15268citrinestuds.jpg', '2019-02-26 23:28:01', '2019-02-26 23:28:01'),
(283, 251, '63213larimar cluster necklace..jpg', '2019-02-26 23:40:50', '2019-02-26 23:40:50'),
(285, 252, '58761heartchalice.jpg', '2019-03-04 00:11:44', '2019-03-04 00:11:44'),
(287, 253, '93002celticknottriquetra.jpg', '2019-03-04 00:21:28', '2019-03-04 00:21:28'),
(288, 254, '68723altarcloth24x24.jpg', '2019-03-04 00:26:52', '2019-03-04 00:26:52'),
(290, 255, '55244brassalladinlamp5%22.jpg', '2019-03-04 00:40:40', '2019-03-04 00:40:40'),
(291, 256, '51279brasshanging censor burner 5in.jpg', '2019-03-04 00:47:37', '2019-03-04 00:47:37'),
(292, 257, '484333inchbrassom.jpg', '2019-03-04 01:32:15', '2019-03-04 01:32:15'),
(293, 258, '134386inchbrassom.jpg', '2019-03-04 01:34:09', '2019-03-04 01:34:09'),
(294, 259, '74731compassinbox.jpg', '2019-03-04 01:37:20', '2019-03-04 01:37:20'),
(295, 260, '70439dancingtara.jpg', '2019-03-04 01:42:33', '2019-03-04 01:42:33'),
(297, 262, '25328woodpentagram3inch.jpg', '2019-03-04 01:50:55', '2019-03-04 01:50:55'),
(298, 263, '99002compasssundial.jpg', '2019-03-04 01:53:19', '2019-03-04 01:53:19'),
(299, 264, '99843omsingingbowlrexpo.jpg', '2019-03-04 01:58:55', '2019-03-04 01:58:55'),
(300, 265, '87297stoneyinyangcandle.jpg', '2019-03-04 02:12:05', '2019-03-04 02:12:05'),
(301, 266, '61301woodcatpuzzlebox.jpg', '2019-03-04 02:37:47', '2019-03-04 02:37:47'),
(302, 267, '37321ompuzzlebox.jpg', '2019-03-04 02:40:15', '2019-03-04 02:40:15'),
(303, 268, '44931yinyangincense.jpg', '2019-03-04 02:49:57', '2019-03-04 02:49:57'),
(304, 269, '49802shakyamuni_buddha_incense_holder__71682.1468943130.1280.1280.jpg', '2019-03-04 04:38:03', '2019-03-04 04:38:03'),
(305, 270, '12966fairy-incense-burner-1130131-2_grande.jpg', '2019-03-04 04:54:31', '2019-03-04 04:54:31'),
(306, 271, '14650black obsidian pencil pendant revised.jpeg', '2019-03-04 05:05:47', '2019-03-04 05:05:47'),
(307, 272, '64907amazonite cap pencil pendant revised.jpeg', '2019-03-04 05:12:21', '2019-03-04 05:12:21'),
(308, 273, '11592black-tourmaline-pencil pendant.jpg', '2019-03-04 05:18:06', '2019-03-04 05:18:06'),
(309, 274, '95663howlite cap pencil pendant rev.jpeg', '2019-03-04 05:24:03', '2019-03-04 05:24:03'),
(310, 275, '18611opalite cap pencil pendant rev.jpeg', '2019-03-04 05:31:17', '2019-03-04 05:31:17'),
(312, 276, '88790tourmilinated quartz cap pencil pendant.jpg', '2019-03-05 01:10:29', '2019-03-05 01:10:29'),
(313, 277, '44086rose quartz cap pencil pendant rev.jpeg', '2019-03-05 01:14:50', '2019-03-05 01:14:50'),
(314, 278, '46180IMG_0011.JPG', '2019-03-05 01:37:11', '2019-03-05 01:37:11'),
(315, 279, '97861IMG_0023.JPG', '2019-03-05 01:44:19', '2019-03-05 01:44:19'),
(316, 280, '65356IMG_0012.JPG', '2019-03-05 01:49:31', '2019-03-05 01:49:31'),
(317, 281, '34277IMG_0013.JPG', '2019-03-05 01:53:03', '2019-03-05 01:53:03'),
(318, 282, '81722IMG_0014.JPG', '2019-03-05 01:59:15', '2019-03-05 01:59:15'),
(319, 283, '91756IMG_0016.JPG', '2019-03-05 02:08:05', '2019-03-05 02:08:05'),
(320, 284, '69153IMG_0017.JPG', '2019-03-05 02:11:25', '2019-03-05 02:11:25'),
(321, 285, '97294IMG_0018.JPG', '2019-03-05 02:17:58', '2019-03-05 02:17:58'),
(323, 286, '80188IMG_0019.JPG', '2019-03-05 02:25:46', '2019-03-05 02:25:46'),
(324, 287, '95795IMG_0020.JPG', '2019-03-05 02:50:10', '2019-03-05 02:50:10'),
(325, 288, '83147IMG_0021.JPG', '2019-03-05 03:00:43', '2019-03-05 03:00:43'),
(326, 289, '43615IMG_0022.JPG', '2019-03-05 03:04:27', '2019-03-05 03:04:27'),
(327, 290, '50386fullsizeoutput_1069.jpeg', '2019-03-05 03:19:08', '2019-03-05 03:19:08'),
(328, 291, '47056motherpeace.jpg', '2019-03-05 04:19:58', '2019-03-05 04:19:58'),
(330, 292, '60689thoth tarot.jpg', '2019-03-05 04:29:25', '2019-03-05 04:29:25'),
(331, 155, '38799Rider Waite.jpg', '2019-03-05 04:30:39', '2019-03-05 04:30:39'),
(332, 293, '85474rumioracle.jpg', '2019-03-05 04:45:53', '2019-03-05 04:45:53'),
(333, 294, '39179RanaGeorgeLenormand.jpg', '2019-03-05 04:49:09', '2019-03-05 04:49:09'),
(335, 295, '88119oracle of visions 2395.jpg', '2019-03-05 04:55:26', '2019-03-05 04:55:26'),
(336, 296, '78121medicinecards2995.jpg', '2019-03-05 05:00:07', '2019-03-05 05:00:07'),
(337, 297, '23630hermetictarot.jpg', '2019-03-05 05:06:04', '2019-03-05 05:06:04'),
(338, 298, '40998kuanyin.jpg', '2019-03-05 05:15:08', '2019-03-05 05:15:08'),
(339, 299, '91003Pend-016-Rose-Quartz-Hearts-Pendants.jpg', '2019-03-05 23:54:25', '2019-03-05 23:54:25'),
(340, 300, '72335Rune-042-Crystal-Quartz-Pencil-Rune-Set.jpg', '2019-03-06 00:09:37', '2019-03-06 00:09:37'),
(341, 301, '91401Pyr-042-Tiger-Eye-Small-Pyramids.jpg', '2019-03-06 00:44:10', '2019-03-06 00:44:10'),
(342, 302, '87975merkaba.jpg', '2019-03-06 00:53:52', '2019-03-06 00:53:52'),
(343, 303, '87344IMG_0065.jpg', '2019-03-06 02:49:50', '2019-03-06 02:49:50'),
(344, 304, '47368IMG_0064.jpg', '2019-03-06 04:50:49', '2019-03-06 04:50:49'),
(345, 189, '29242Crescent goddess.jpg', '2019-03-06 05:44:39', '2019-03-06 05:44:39'),
(346, 261, '93341candlesnuffer.jpg', '2019-03-06 05:49:13', '2019-03-06 05:49:13'),
(347, 110, '63927Selenite Knives Large.jpg', '2019-03-09 00:41:25', '2019-03-09 00:41:25'),
(348, 111, '73869Selenite Knives Small.jpg', '2019-03-09 00:42:18', '2019-03-09 00:42:18'),
(349, 305, '89845CapPen-007-Golden-Quartz--Cap-Pencil-Pendants.jpg', '2019-03-09 00:57:22', '2019-03-09 00:57:22'),
(350, 306, '41948fluorite.jpg', '2019-03-09 01:02:16', '2019-03-09 01:02:16'),
(351, 307, '65631Worry-003-Amethyst-Worry-Stone.jpg', '2019-03-09 01:11:56', '2019-03-09 01:11:56'),
(352, 308, '85202Worry-001-Rose-Quartz-Worry-Stone.jpg', '2019-03-09 01:21:40', '2019-03-09 01:21:40'),
(353, 309, '93875Worry-018-Labrodrite-Worry-Stone.jpg', '2019-03-09 01:40:47', '2019-03-09 01:40:47'),
(354, 310, '98782Worry-020-Light-Aventurine-Worry-Stone.jpg', '2019-03-09 01:46:04', '2019-03-09 01:46:04'),
(357, 313, '28226Electro-095-Black-Tourmaline-Natural-Raw-Pendants.jpg', '2019-03-09 23:57:34', '2019-03-09 23:57:34'),
(358, 314, '14317maidenmothercroneunicorn.jpg', '2019-03-11 04:34:54', '2019-03-11 04:34:54'),
(359, 315, '40219dhyanabuddhaworldbuyers.jpg', '2019-03-11 05:45:01', '2019-03-11 05:45:01'),
(360, 316, '68399blue hamsa incense burner.jpg', '2019-03-11 05:50:59', '2019-03-11 05:50:59'),
(361, 317, '76956hamsagoldworldbuyers.jpg', '2019-03-11 05:56:02', '2019-03-11 05:56:02'),
(362, 318, '98981witnessbuddhaboxworldbuyers.jpg', '2019-03-11 06:09:04', '2019-03-11 06:09:04'),
(363, 312, '66145ytcseatedlaksmi.jpg', '2019-03-11 06:14:11', '2019-03-11 06:14:11'),
(364, 311, '41183ytcthreesidedkuanyin.jpg', '2019-03-11 06:17:34', '2019-03-11 06:17:34'),
(365, 319, '19602palosanto.jpg', '2019-03-11 22:21:41', '2019-03-11 22:21:41'),
(366, 320, '88704palosantocone.jpg', '2019-03-11 22:26:50', '2019-03-11 22:26:50'),
(367, 321, '57079smudgekit.jpg', '2019-03-11 22:33:33', '2019-03-11 22:33:33'),
(368, 322, '51831sageandlavender.jpg', '2019-03-11 22:37:48', '2019-03-11 22:37:48'),
(369, 323, '75040abalone shell.jpg', '2019-03-11 22:43:18', '2019-03-11 22:43:18'),
(370, 324, '44665deluxe smudge kit.jpg', '2019-03-11 22:52:31', '2019-03-11 22:52:31'),
(371, 325, '41147redsandalwood.jpg', '2019-03-11 23:02:10', '2019-03-11 23:02:10'),
(372, 326, '69216smudging sampler.jpg', '2019-03-11 23:12:32', '2019-03-11 23:12:32'),
(373, 327, '43826kuan yin fountain.jpg', '2019-03-11 23:39:42', '2019-03-11 23:39:42'),
(374, 245, '48063luckyjapanese jizohilinegifts.jpg', '2019-03-11 23:46:17', '2019-03-11 23:46:17'),
(375, 328, '76489holdinghandsworldbuyers.jpg', '2019-03-12 00:00:29', '2019-03-12 00:00:29'),
(376, 329, '32169tripodwith abalone.jpg', '2019-03-12 00:20:18', '2019-03-12 00:20:18'),
(377, 329, '27460tripod6%22.jpg', '2019-03-12 00:20:58', '2019-03-12 00:20:58'),
(378, 330, '25159frankincensesmudge.jpg', '2019-03-12 00:47:56', '2019-03-12 00:47:56'),
(380, 331, '14903myrrhsmudge.jpg', '2019-03-12 00:53:11', '2019-03-12 00:53:11'),
(382, 332, '76815ytcgreentara.jpg', '2019-03-12 01:09:26', '2019-03-12 01:09:26'),
(383, 333, '78754ytcmedicinebuddha.jpg', '2019-03-12 01:20:26', '2019-03-12 01:20:26'),
(384, 232, '28693BL32001.jpg', '2019-03-12 01:42:09', '2019-03-12 01:42:09'),
(385, 234, '35225evileyependant2.jpg', '2019-03-12 01:43:31', '2019-03-12 01:43:31'),
(386, 232, '78246evil eyependant.jpg', '2019-03-12 01:44:33', '2019-03-12 01:44:33'),
(387, 334, '25315goldevileyesilverdepot.jpg', '2019-03-12 02:15:23', '2019-03-12 02:15:23'),
(388, 335, '72859silverdepotevilbraceletNAR9SBC-1356-SL.jpg', '2019-03-12 02:24:51', '2019-03-12 02:24:51'),
(389, 336, '57639Sterling Silver St Christophersilverdep.jpg', '2019-03-12 02:31:30', '2019-03-12 02:31:30'),
(390, 337, '24443shelldreamcatcherworldbuyers.jpg', '2019-03-13 05:42:18', '2019-03-13 05:42:18'),
(391, 338, '31185flyingwishM-Mindful-tile.png', '2019-03-14 06:26:48', '2019-03-14 06:26:48'),
(392, 339, '11742flyingwishSUF_kitty.jpg', '2019-03-14 06:32:13', '2019-03-14 06:32:13'),
(393, 340, '71125unicorn+guts.png', '2019-03-14 06:37:30', '2019-03-14 06:37:30'),
(394, 341, '52462JFlying wishustBee.jpg', '2019-03-14 06:43:18', '2019-03-14 06:43:18'),
(395, 338, '53249FWP_mindful_productshot.jpg', '2019-03-14 06:46:54', '2019-03-14 06:46:54'),
(396, 342, '30166dandelion-onepencil.jpg', '2019-03-14 06:51:11', '2019-03-14 06:51:11'),
(397, 343, '33743flyingwishOM.jpg', '2019-03-14 06:55:34', '2019-03-14 06:55:34'),
(398, 344, '80756triplemoonbells.jpg', '2019-03-16 23:19:16', '2019-03-16 23:19:16'),
(399, 100, '32410ganeshabell.jpg', '2019-03-16 23:25:00', '2019-03-16 23:25:00'),
(400, 345, '57081ankhbells.jpg', '2019-03-16 23:32:30', '2019-03-16 23:32:30'),
(402, 347, '56702skullnirvSPE-620.jpg', '2019-03-29 01:19:17', '2019-03-29 01:19:17'),
(403, 348, '80821ankhnirvSPE-564.jpg', '2019-03-29 01:43:46', '2019-03-29 01:43:46'),
(404, 145, '14767seleniteimage-1.jpg', '2019-03-29 01:58:52', '2019-03-29 01:58:52'),
(405, 41, '34418metatronstatue.jpg', '2019-04-09 23:48:33', '2019-04-09 23:48:33'),
(406, 349, '2766896241OM-onepencil.jpg', '2019-07-10 00:07:43', '2019-07-10 00:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `size_id`, `color_id`, `stock`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(2, 5, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(3, 6, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(4, 7, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(5, 8, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(6, 9, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(7, 10, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(8, 11, NULL, NULL, 0, '2019-04-15 01:41:30', '2019-04-15 01:41:30'),
(9, 12, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(10, 13, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(11, 14, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(12, 15, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(13, 16, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(14, 17, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(15, 18, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(16, 19, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(17, 20, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(18, 21, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(19, 22, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(20, 23, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(21, 24, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(22, 25, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(23, 26, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(24, 27, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(25, 28, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(26, 29, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(27, 30, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(28, 31, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(29, 32, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(30, 33, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(31, 34, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(32, 35, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(33, 36, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(34, 37, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(35, 38, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(36, 39, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(37, 40, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(38, 41, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(39, 42, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(40, 43, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(41, 44, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(42, 45, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(43, 47, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(44, 48, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(45, 49, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(46, 50, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(47, 51, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(48, 52, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(49, 53, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(50, 54, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(51, 55, NULL, NULL, 0, '2019-04-15 01:41:31', '2019-04-15 01:41:31'),
(52, 56, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(53, 57, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(54, 58, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(55, 59, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(56, 60, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(57, 61, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(58, 62, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(59, 63, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(60, 64, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(61, 65, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(62, 66, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(63, 67, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(64, 68, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(65, 69, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(66, 70, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(67, 71, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(68, 72, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(69, 73, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(70, 74, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(71, 75, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(72, 76, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(73, 77, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(74, 78, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(75, 79, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(76, 80, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(77, 81, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(78, 82, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(79, 83, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(80, 84, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(81, 85, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(82, 86, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(83, 87, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(84, 88, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(85, 89, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(86, 90, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(87, 91, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(88, 92, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(89, 93, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(90, 94, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(91, 95, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(92, 96, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(93, 97, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(94, 98, NULL, NULL, 0, '2019-04-15 01:41:32', '2019-04-15 01:41:32'),
(95, 99, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(96, 100, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(97, 101, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(98, 102, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(99, 103, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(100, 104, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(101, 105, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(102, 106, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(103, 107, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(104, 108, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(105, 109, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(106, 110, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(107, 111, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(108, 112, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(109, 113, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(110, 114, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(111, 115, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(112, 116, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(113, 117, NULL, NULL, 0, '2019-04-15 01:41:33', '2019-04-15 01:41:33'),
(114, 118, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(115, 119, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(116, 120, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(117, 121, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(118, 122, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(119, 123, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(120, 124, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(121, 125, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(122, 126, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(123, 127, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(124, 128, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(125, 129, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(126, 130, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(127, 131, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(128, 132, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(129, 133, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(130, 135, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(131, 136, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(132, 137, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(133, 138, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(134, 139, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(135, 140, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(136, 141, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(137, 142, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(138, 143, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(139, 144, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(140, 145, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(141, 146, NULL, NULL, 0, '2019-04-15 01:41:34', '2019-04-15 01:41:34'),
(142, 147, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(143, 148, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(144, 149, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(145, 150, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(146, 151, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(147, 152, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(148, 153, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(149, 154, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(150, 155, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(151, 156, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(152, 157, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(153, 158, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(154, 159, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(155, 160, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(156, 161, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(157, 162, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(158, 163, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(159, 164, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(160, 165, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(161, 166, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(162, 168, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(163, 169, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(164, 170, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(165, 171, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(166, 172, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(167, 173, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(168, 174, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(169, 175, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(170, 176, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(171, 177, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(172, 178, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(173, 179, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(174, 180, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(175, 181, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(176, 182, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(177, 183, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(178, 184, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(179, 185, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(180, 186, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(181, 187, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(182, 188, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(183, 189, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(184, 190, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(185, 191, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(186, 192, NULL, NULL, 0, '2019-04-15 01:41:35', '2019-04-15 01:41:35'),
(187, 193, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(188, 194, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(189, 195, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(190, 196, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(191, 197, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(192, 198, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(193, 199, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(194, 200, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(195, 201, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(196, 202, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(197, 203, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(198, 204, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(199, 205, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(200, 206, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(201, 207, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(202, 208, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(203, 209, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(204, 210, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(205, 211, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(206, 212, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(207, 213, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(208, 214, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(209, 215, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(210, 216, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(211, 217, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(212, 218, NULL, NULL, 0, '2019-04-15 01:41:36', '2019-04-15 01:41:36'),
(213, 219, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(214, 220, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(215, 221, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(216, 222, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(217, 223, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(218, 224, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(219, 225, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(220, 226, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(221, 227, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(222, 228, NULL, NULL, 0, '2019-04-15 01:41:37', '2019-04-15 01:41:37'),
(223, 229, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(224, 230, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(225, 231, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(226, 232, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(227, 233, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(228, 234, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(229, 235, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(230, 236, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(231, 237, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(232, 238, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(233, 239, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(234, 240, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(235, 241, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(236, 242, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(237, 243, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(238, 244, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(239, 245, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(240, 246, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(241, 247, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(242, 248, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(243, 249, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(244, 250, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(245, 251, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(246, 252, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(247, 253, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(248, 254, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(249, 255, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(250, 256, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(251, 257, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(252, 258, NULL, NULL, 0, '2019-04-15 01:41:38', '2019-04-15 01:41:38'),
(253, 259, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(254, 260, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(255, 261, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(256, 262, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(257, 263, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(258, 264, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(259, 265, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(260, 266, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(261, 267, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(262, 268, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(263, 269, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(264, 270, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(265, 271, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(266, 272, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(267, 273, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(268, 274, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(269, 275, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(270, 276, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(271, 277, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(272, 278, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(273, 279, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(274, 280, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(275, 281, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(276, 282, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(277, 283, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(278, 284, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(279, 285, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(280, 286, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(281, 287, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(282, 288, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(283, 289, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(284, 290, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(285, 291, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(286, 292, NULL, NULL, 0, '2019-04-15 01:41:39', '2019-04-15 01:41:39'),
(287, 293, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(288, 294, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(289, 295, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(290, 296, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(291, 297, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(292, 298, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(293, 299, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(294, 300, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(295, 301, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(296, 302, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(297, 303, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(298, 304, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(299, 305, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(300, 306, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(301, 307, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(302, 308, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(303, 309, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(304, 310, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(305, 311, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(306, 312, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(307, 313, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(308, 314, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(309, 315, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(310, 316, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(311, 317, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(312, 318, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(313, 319, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(314, 320, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(315, 321, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(316, 322, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(317, 323, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(318, 324, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(319, 325, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(320, 326, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(321, 327, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(322, 328, NULL, NULL, 0, '2019-04-15 01:41:40', '2019-04-15 01:41:40'),
(323, 329, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(324, 330, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(325, 331, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(326, 332, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(327, 333, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(328, 334, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(329, 335, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(330, 336, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(331, 337, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(332, 338, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(333, 339, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(334, 340, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(335, 341, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(337, 343, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(338, 344, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 01:41:41'),
(341, 347, NULL, NULL, 0, '2019-04-15 01:41:41', '2019-04-15 04:14:20'),
(372, 345, NULL, NULL, 10, '2019-04-26 03:56:57', '2019-04-26 03:56:57'),
(373, 346, NULL, NULL, 5, '2019-04-26 04:59:31', '2019-04-26 04:59:31'),
(374, 348, NULL, NULL, 5, '2019-06-19 01:07:13', '2019-06-19 01:07:13'),
(376, 342, NULL, NULL, 6, '2019-07-08 23:22:22', '2019-07-08 23:22:22'),
(377, 349, 3, 5, 10, '2019-07-10 00:07:43', '2019-07-10 00:09:10'),
(378, 349, 2, 3, -5, '2019-07-10 00:07:43', '2019-09-03 04:39:05'),
(379, 349, 1, 6, 8, '2019-07-10 00:07:43', '2019-08-05 05:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `seo_page_settings`
--

CREATE TABLE `seo_page_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_page_settings`
--

INSERT INTO `seo_page_settings` (`id`, `page_name`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home  Pixie Dust Metaphysical Boutique', 'metaphysical, new age, pagan, pixie dust, fairy, mermaid, dragon, wicca, buddhism, buddha, wiccan supplies, hindu statues, spiritual  jewelry, psychic readings, massage therapy, intuitive readers, clairvoyant, tarot cards, tarot', 'Sarasota’s unique gifts, psychic readings, crystals, spiritual jewelry, New Age items, massage and energetic treatments, and a lot of whimsy in west Florida\r\nOur metaphysical store carries a variety of spiritual jewelry, crystals, New Age books, sage and other smudging supplies, statues, Buddhas, fairies, mermaids, runes, pagan and Wiccan supplies, Sarasota’s widest variety of tarot and oracle card decks and much more!  We also offer therapeutic massage, sound bath treatments, Reiki treatments, chakra clearing and other energetic healing services.  Visit us in person at our Main Street location downtown Sarasota, Florida, or check out our online store to shop for the best jewelry, incense, magical statues, and everything else New Age.\r\n\r\nWe have psychic readers in our Sarasota store every week to answer your questions.  Call us to schedule your intuitive readings!  Walk ins are always welcome\r\n\r\nWe also organize a variety of New Age events, psychic readings and metaphysical workshops with the best healers and psychic readers from Sarasota and surrounding communities in Florida.  Browse our news and events page for current updates or visit our store in person:', '2019-02-13 18:30:00', '2019-03-28 22:52:52'),
(2, 'products', 'Products', 'spiritual, mala necklace, om, buddha, ganesha, lakshmi, ceridwen, diana statue, zeus, pagan statue, greek statue, spiritual jewelry, crystals, healing crystals, crystal jewelry, new age products, incense, smudge, incense burner', 'Our metaphysical shop offers products for all paths.  You will find spiritual jewelry, buddha statues, pagan and wiccan statues, hindu statues, crystals, mala bead necklaces, incense, smudge, smudge supplies and all things new age.', NULL, '2019-02-19 23:36:16'),
(3, 'Contact Us', 'Contact Us', 'Contact, email, phone, pixie Dust', 'Contact us through phone or email', NULL, '2019-02-19 23:37:22'),
(4, 'Psychic Reading', 'Psychic Reading', 'Sarasota, psychic readings, psychic, intuitive readings, clairvoyant, astrologer, astrology, fortune teller, tarot cards, oracle cards, medium, angel cards, angel reader, tea leaf readings, rune', 'Our intuitive readers offer the best in psychic readings:  Astrology, Clairvoyance, Tarot Card Readings, Angel Readings, Mediumship, Tea Leaf Readings and more.', NULL, '2019-02-19 23:45:26'),
(5, 'Massage Therapy', 'Massage Therapy', 'massage, massage therapy, deep tissue, hot stone massage, Thai massage, Swedish massage, Reiki, Sarasota', 'Our massage therapists offer a variety of services including deep tissue massage, Swedish massage, hot stone massage and Reiki in Sarasota, Florida.', NULL, '2019-02-19 23:45:04'),
(6, 'About our psychic readers', 'About our psychic readers', 'About our psychic readers', 'About our psychic readers', '2019-04-04 07:00:00', '2019-04-04 07:00:00'),
(7, 'About our massage therapists', 'About our massage therapists', 'About our massage therapists', 'About our massage therapists', '2019-04-04 07:00:00', '2019-04-04 07:00:00'),
(8, 'Blogs', 'Pixie Posts', 'Blog, metaphysical, astrology, tarot cards, oracle cards', 'Our blog takes a look at topics ranging from tarot cards to how to use a singing bowl.', '2019-04-04 07:00:00', '2019-04-09 23:14:22'),
(9, 'Symbols', 'About Symbols', 'Symbols, sacred symbols, triquetra, pentacle, flower of life, lotus, om, hamsa, evil eye, meaning of', 'Brief descriptions of common symbols and their meanings including Om, Hamsa, Flower of Life, Pentacle', '2019-04-04 07:00:00', '2019-04-09 23:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `service_schedules`
--

CREATE TABLE `service_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_schedules`
--

INSERT INTO `service_schedules` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<ul>\r\n	<li>Monday: Jay (Astrologer)</li>\r\n	<li>Tuesday: Michael (Tarot )</li>\r\n	<li>Wednesday: Jay (Astrologer)</li>\r\n	<li>Thursday: Michael (Tarot)</li>\r\n	<li>Friday: Peggy (Clairvoyant)</li>\r\n	<li>Saturday: 10-2 pm Susan (Clairvoyant) 2-5 pm Tammy (Tarot)</li>\r\n	<li>Sunday: Lydia (Angel Card Readings) &nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#008080\">Please note that the schedule may occasionally change.</span></p>\r\n\r\n<p><span style=\"font-size:10px\"><span style=\"color:#008080\">*For entertainment purposes only. &nbsp; In the case of medical issues, please consult your healthcare provider.</span></span></p>', '2019-01-27 20:30:00', '2019-03-22 21:18:59'),
(2, '<ul>\r\n	<li>Monday: Eric</li>\r\n	<li>Tuesday: Eric</li>\r\n	<li>Wednesday: Hazel</li>\r\n	<li>Thursday: Eisha</li>\r\n	<li>Friday: Eisha</li>\r\n	<li>Saturday: Eisha and Eric</li>\r\n	<li>Sunday: Eric</li>\r\n</ul>', '2019-01-27 19:30:00', '2019-01-28 04:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'Small', '2019-04-15 01:02:25', '2019-04-15 01:02:25'),
(2, 'Medium', '2019-04-15 01:02:36', '2019-04-15 01:02:36'),
(3, 'Large', '2019-04-15 01:02:42', '2019-04-15 01:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scat_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `scat_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Prayer Mala Necklaces', 'prayer-mala-necklaces', 0, '2018-12-24 05:28:52', '2018-12-24 07:52:28'),
(2, 2, 'Eastern', 'eastern', 0, '2018-12-31 05:07:07', '2018-12-31 05:07:07'),
(3, 1, 'Crystal Point Pendants', 'crystal-point-pendants', 0, '2019-01-08 05:58:37', '2019-01-08 05:58:37'),
(4, 1, 'Reiki Charged Gemstone Bead Bracelets', 'reiki-charged-gemstone-bead-bracelets', 0, '2019-01-25 10:16:03', '2019-02-03 19:20:16'),
(5, 1, 'Sacred Symbols', 'sacred-symbols', 0, '2019-01-25 10:16:18', '2019-01-25 10:16:18'),
(7, 1, 'Chakra, Evil Eye, Misc.', 'chakra-evil-eye-misc', 0, '2019-01-25 10:17:05', '2019-02-14 01:43:41'),
(8, 1, 'Astrology', 'astrology', 0, '2019-01-25 10:17:19', '2019-01-25 10:17:19'),
(9, 1, 'Wicca and Pagan', 'wicca-and-pagan', 0, '2019-01-25 10:17:33', '2019-01-25 10:17:33'),
(10, 1, 'Other Jewelry', 'other-jewelry', 0, '2019-01-25 10:17:43', '2019-02-03 19:42:25'),
(11, 2, 'Norse, Celtic, Egyptian, Roman, Myth', 'norse-celtic-egyptian-roman-myth', 0, '2019-01-30 02:20:52', '2019-02-13 02:00:42'),
(12, 2, 'Angels, Saints, Religious', 'angels-saints-religious', 0, '2019-01-30 02:21:51', '2019-01-30 02:21:51'),
(13, 1, 'Fine Jewelry--Pixie Dust™, Satya, Energy Muse, Saraswati', 'fine-jewelry-pixie-dust-satya-energy-muse-saraswati', 1, '2019-01-30 02:22:31', '2019-03-18 00:37:19'),
(14, 3, 'Incense', 'incense', 0, '2019-02-02 06:17:58', '2019-02-02 06:17:58'),
(15, 3, 'Burners and Misc', 'burners-and-misc', 0, '2019-02-02 06:18:19', '2019-02-02 06:18:19'),
(16, 3, 'Smudge', 'smudge', 0, '2019-02-02 06:18:35', '2019-02-02 06:18:35'),
(17, 2, 'Classic', 'classic', 0, '2019-02-02 23:56:44', '2019-02-02 23:56:44'),
(18, 5, 'Bells and chimes', 'bells-and-chimes', 0, '2019-02-03 02:52:29', '2019-02-03 02:52:29'),
(19, 5, 'Drums, percussion', 'drums-percussion', 0, '2019-02-03 02:52:55', '2019-02-03 08:08:59'),
(20, 5, 'Singing Bowls', 'singing-bowls', 0, '2019-02-03 02:53:10', '2019-02-03 02:53:10'),
(21, 4, 'Candles', 'candles', 0, '2019-02-03 02:56:38', '2019-02-03 02:56:38'),
(22, 4, 'Blessing Bowls', 'blessing-bowls', 0, '2019-02-03 02:56:53', '2019-02-03 02:56:53'),
(23, 4, 'Pottery', 'pottery', 0, '2019-02-03 02:57:05', '2019-02-03 02:57:05'),
(24, 4, 'Boxes and trinkets', 'boxes-and-trinkets', 0, '2019-02-03 02:57:46', '2019-02-03 02:57:46'),
(25, 6, 'Worry Stones and Engraved Stones', 'worry-stones-and-engraved-stones', 0, '2019-02-04 03:38:57', '2019-03-09 00:28:00'),
(27, 6, 'Carved Gemstone Statues', 'carved-gemstone-statues', 0, '2019-02-04 03:40:26', '2019-02-04 03:40:26'),
(28, 2, 'Fairies and Mermaids', 'fairies-and-mermaids', 0, '2019-02-05 02:37:06', '2019-02-05 02:37:06'),
(29, 2, 'Dragons and Other Mythical', 'dragons-and-other-mythical', 0, '2019-02-05 02:37:30', '2019-02-05 02:37:30'),
(30, 6, 'Orgonite', 'orgonite', 0, '2019-02-07 03:18:30', '2019-02-07 03:18:30'),
(31, 6, 'Miscellaneous', 'miscellaneous', 0, '2019-02-07 04:34:51', '2019-02-07 04:34:51'),
(32, 7, 'Altar Tiles and Directionals', 'altar-tiles-and-directionals', 0, '2019-02-07 04:53:34', '2019-02-07 04:53:34'),
(33, 7, 'Athame and Wands', 'athame-and-wands', 0, '2019-02-07 04:54:02', '2019-02-07 04:54:02'),
(34, 7, 'Offering bowls and Miscellaneous', 'offering-bowls-and-miscellaneous', 0, '2019-02-07 04:54:46', '2019-02-07 04:54:46'),
(35, 6, 'Himalayan Salt', 'himalayan-salt', 0, '2019-02-07 06:16:41', '2019-02-07 06:16:41'),
(36, 4, 'Kids', 'kids', 0, '2019-02-07 18:24:16', '2019-02-07 18:24:16'),
(37, 8, 'Tarot and Oracle Cards', 'tarot-and-oracle-cards', 0, '2019-02-08 05:36:04', '2019-02-08 05:36:04'),
(38, 8, 'Runes', 'runes', 0, '2019-02-08 05:36:43', '2019-02-08 05:36:43'),
(39, 8, 'Pendulums and Dowsing Rods', 'pendulums-and-dowsing-rods', 0, '2019-02-08 05:37:17', '2019-02-08 05:37:17'),
(40, 9, 'Miscellaneous Feng Shui', 'miscellaneous-feng-shui', 0, '2019-02-11 22:48:37', '2019-02-11 22:48:37'),
(41, 2, 'Whimsy and Misc.', 'whimsy-and-misc', 0, '2019-02-12 16:35:44', '2019-02-18 01:13:26'),
(42, 4, 'Pixie Dust Body Glitter', 'pixie-dust-body-glitter', 0, '2019-02-14 02:18:43', '2019-02-14 02:18:43'),
(43, 7, 'Altar cloths, prayer flags, banners', 'altar-cloths-prayer-flags-banners', 0, '2019-02-15 09:00:26', '2019-02-15 09:00:26'),
(44, 1, 'Amber Teething Necklaces', 'amber-teething-necklaces', 0, '2019-02-18 02:39:58', '2019-02-18 02:39:58'),
(45, 1, 'Earrings', 'earrings', 0, '2019-02-19 07:11:35', '2019-02-19 07:11:35'),
(46, 2, 'Wall Hangings', 'wall-hangings', 0, '2019-03-04 01:30:49', '2019-03-04 01:30:49'),
(47, 4, 'Compass, Nautical, Misc', 'compass-nautical-misc', 0, '2019-03-04 01:35:04', '2019-03-04 01:35:04'),
(48, 6, 'Selenite', 'selenite', 0, '2019-03-09 00:30:23', '2019-03-09 00:30:23'),
(49, 6, 'Pyramids, Spheres, Eggs', 'pyramids-spheres-eggs', 0, '2019-03-09 00:30:58', '2019-03-09 00:30:58'),
(50, 6, 'Crystal Gift Ideas', 'crystal-gift-ideas', 0, '2019-03-09 00:31:56', '2019-03-09 00:31:56'),
(51, 10, 'Dreamcatchers', 'dreamcatchers', 0, '2019-03-13 02:26:18', '2019-03-13 02:26:18'),
(52, 4, 'Flying Wish Paper', 'flying-wish-paper', 0, '2019-03-14 06:22:15', '2019-03-14 06:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `temp_carts`
--

CREATE TABLE `temp_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `total_shipping_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_carts`
--

INSERT INTO `temp_carts` (`id`, `user_id`, `session_id`, `product_id`, `stock_id`, `unit_price`, `quantity`, `total_price`, `total_shipping_price`, `created_at`, `updated_at`) VALUES
(3, NULL, 'vKSSxDuzwp6XbzeKY4zf8IN6bfoVdexnEeuwvuiq', 349, 379, '4.90', 1, '4.90', '1.00', '2019-08-01 03:39:28', '2019-08-01 03:39:28'),
(4, NULL, 'F7FvLcfvrcVQTk5O8LHreCaWyyIh3wjwA7xWTT7a', 349, 378, '4.90', 1, '4.90', '1.00', '2019-08-01 03:41:24', '2019-08-01 03:41:24'),
(6, NULL, 'U6NbAXQWZoR245wOq0xT3oErexpTrkpBO4dx8eC2', 349, 378, '4.90', 1, '4.90', '1.00', '2019-08-01 08:10:57', '2019-08-01 08:10:57'),
(14, 4, NULL, 349, 378, '4.90', 1, '4.90', '1.00', '2019-08-06 07:01:43', '2019-08-06 07:01:43'),
(15, 9, NULL, 349, 378, '4.90', -5, '-24.50', '-5.00', '2019-09-14 01:57:04', '2019-09-14 01:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_hours` text COLLATE utf8mb4_unicode_ci,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `alt_email`, `password`, `active`, `contact_no`, `address`, `opening_hours`, `facebook_url`, `twitter_url`, `instagram_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pixie Dust Admin', 'admin@pixiedust.com', 'suresh@bletindia.com', '$2y$10$YedR/SvKA/VXF5rMTzQmYeYrFtbuvo..QGMOAX76jpdCgVHeuhgGy', 1, '(941) 366-6325', 'Pixie Dust Metaphysical Boutique</br>\r\n1476 Main Street</br>\r\nSarasota, FL', 'Open 7 Days a Week!</br>\r\nMonday - Friday 11:00 am - 6:00 pm</br>\r\nSaturday 10:00-5:00</br>\r\nSunday 11:00 am to 5:00 pm', 'https://facebook.com/pixiedustmetaphysicalboutique', 'https://twitter.com/PixieDustSRQ', 'https://instagram.com/PixieDustSRQ', 'WU9JiTqD3Eguew5HmsuRMJlyhrdxAwMCD4ec0vXYimQMtpQySNbv8pPRuzuN', '2018-12-13 13:00:00', '2019-09-04 23:51:53'),
(2, 'Suresh Kumar Khatua', 'suresh@bletindia.com', NULL, '$2y$10$33z.xmdN0227f7NGkRj39uN7z/02Q1ncqiouR0.n5r0zLs4Egqjqq', 1, '98612455555', 'BBSR1', NULL, NULL, NULL, NULL, 'NhGmzPoc4tmurkffEONdlFV3hQrPsaVVh04NBBHf2gYyfq2ZaG2dUEBWnf5X', '2019-09-05 02:17:56', '2019-09-05 04:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_registrations`
--

CREATE TABLE `user_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_post_code` int(11) DEFAULT NULL,
  `bill_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `same_for_billing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=Other,0=Same',
  `user_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_registrations`
--

INSERT INTO `user_registrations` (`id`, `bill_first_name`, `bill_last_name`, `email`, `bill_phone_number`, `user_password`, `bill_address1`, `bill_address2`, `bill_city`, `bill_post_code`, `bill_state`, `bill_country`, `same_for_billing`, `user_status`, `created_at`, `updated_at`) VALUES
(1, 'Johnna', 'White', 'johnnawhite@verizon.net', '7813675189', '$2y$10$VHxBYr9nUWtThD5WR8VDYe64pLWBBatU2wLg5QBEcJSo9iFi5t4fO', '10030 Cherry Hills ave Cir', NULL, 'Lakewood Ranch', 34202, 'FL', 'USA', 0, 1, '2019-02-16 07:49:32', '2019-04-05 21:34:44'),
(2, 'Nicole', 'Maldonado', 'nikkiatwork2@yahoo.com', '813-992-2825', '$2y$10$peEc9q6yW3vIu8gVXwsKCenp6PIRacZxGcGUdgeNZWMm7fgiujPSC', '5002 Grainary Ave\\r\\nTampa', 'Fl 33624', NULL, NULL, NULL, NULL, 0, 1, '2019-03-14 09:28:22', '2019-03-14 09:28:22'),
(3, 'Lauren', 'Wood', 'lbwood1@cox.net', '7575327054', '$2y$10$k5ifjpDliJ.yCwDu/9e8cueHN7DdUwi4K7SYy2dpkT0H/zViSQXs2', '212 Chesterfield Rd\\r\\nHampton', 'VA 23661', NULL, NULL, NULL, NULL, 0, 1, '2019-03-21 02:58:33', '2019-03-21 02:58:33'),
(4, 'Trideep', 'Dakua', 'trideep@bletindia.com', '7205821247', '$2y$10$VHxBYr9nUWtThD5WR8VDYe64pLWBBatU2wLg5QBEcJSo9iFi5t4fO', 'Bhubaneswar', 'Odisha', 'BBSR', 751010, 'OD', 'India', 0, 1, '2019-03-26 17:32:38', '2019-04-25 01:14:13'),
(6, 'KeithPar', 'KeithPar', 'rafis0ri2sh@mail.ru', '88159937859', '$2y$10$4XZLISZEKKapavuS9MUtRu7W6MneslU9Wjp7Hipv0y8duOiMhDBKi', 'Linguere', 'Linguere', 'Linguere', 144313, 'Senegal', 'Senegal', 0, 1, '2019-03-29 12:00:18', '2019-03-29 12:00:18'),
(7, 'Jim', 'Donohue', 'jim@jimdonohue.net', '7813675189', '$2y$10$.ccfzpqexzmFOJ/Or1h4cOBMz810pOLT/OQeodjKU7Ivs/6PME2mi', '1476 MAIN ST', 'none', 'Lakewood Ranch', 34202, 'Florida -', 'United States', 0, 1, '2019-04-05 21:44:59', '2019-04-05 21:44:59'),
(8, 'Megan', 'Stephens', 'megan-stephens@comcast.net', '9413507634', '$2y$10$jwDAD3fZFqUXk6r/bMHXB.KGlLrhFxHpfMtTpYpKb5RtVuBq9yTWe', '3715 pin oaks street', '.', 'sarasota', 34232, 'fl', 'United States', 0, 1, '2019-04-07 12:02:56', '2019-04-07 12:02:56'),
(9, 'Manoranjan', 'Swain', 'ms@bletindia.com', '1234567890', '$2y$10$vH62qINKOkLjXeXkeupJXejoQvKo/dmcciHUY64OA0c01aXDH9q5W', 'test', 'test2', 'bbsr', 751010, 'Odisha', 'India', 0, 1, '2019-06-08 05:57:08', '2019-08-08 04:48:39'),
(10, 'Surendra', 'Rana', 'sr@bletindia.com', '1234567890', '$2y$10$0AW2NdUCY6ESKAyPcnUSIu3XaEUxx4TfnZUopb6dMJisILp5rJRN2', 'Mancheswar', NULL, 'bbsr', 751010, 'odisha', 'india', 0, 1, '2019-07-15 04:13:42', '2019-07-15 04:13:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_cms`
--
ALTER TABLE `event_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intutive_price_settings`
--
ALTER TABLE `intutive_price_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intutive_reading_bookings`
--
ALTER TABLE `intutive_reading_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `intutive_reading_bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `massage_price_settings`
--
ALTER TABLE `massage_price_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage_therapy_bookings`
--
ALTER TABLE `massage_therapy_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `massage_therapy_bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `master_orders`
--
ALTER TABLE `master_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `other_cms_pages`
--
ALTER TABLE `other_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_stocks_size_id_foreign` (`size_id`),
  ADD KEY `product_stocks_color_id_foreign` (`color_id`);

--
-- Indexes for table `seo_page_settings`
--
ALTER TABLE `seo_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_schedules`
--
ALTER TABLE `service_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_carts`
--
ALTER TABLE `temp_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temp_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_alt_email_unique` (`alt_email`);

--
-- Indexes for table `user_registrations`
--
ALTER TABLE `user_registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_cms`
--
ALTER TABLE `event_cms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `intutive_price_settings`
--
ALTER TABLE `intutive_price_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `intutive_reading_bookings`
--
ALTER TABLE `intutive_reading_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `massage_price_settings`
--
ALTER TABLE `massage_price_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `massage_therapy_bookings`
--
ALTER TABLE `massage_therapy_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `master_orders`
--
ALTER TABLE `master_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `other_cms_pages`
--
ALTER TABLE `other_cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `seo_page_settings`
--
ALTER TABLE `seo_page_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_schedules`
--
ALTER TABLE `service_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `temp_carts`
--
ALTER TABLE `temp_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_registrations`
--
ALTER TABLE `user_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `intutive_reading_bookings`
--
ALTER TABLE `intutive_reading_bookings`
  ADD CONSTRAINT `intutive_reading_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_registrations` (`id`);

--
-- Constraints for table `master_orders`
--
ALTER TABLE `master_orders`
  ADD CONSTRAINT `master_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user_registrations` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `master_orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_stocks_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temp_carts`
--
ALTER TABLE `temp_carts`
  ADD CONSTRAINT `temp_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
