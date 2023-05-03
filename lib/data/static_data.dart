import 'package:flutter/material.dart';

// App Navigator Key
GlobalKey<NavigatorState> appLevelNavigatorKey = GlobalKey<NavigatorState>();

// Home Navigator Key
GlobalKey<NavigatorState> homeLevelNavigatorKey = GlobalKey<NavigatorState>();

// Category Navigator Key
GlobalKey<NavigatorState> categoryLevelNavigatorKey =
    GlobalKey<NavigatorState>();

// Cart Navigator Key
GlobalKey<NavigatorState> cartLevelNavigatorKey = GlobalKey<NavigatorState>();

// Profile Navigator Key
GlobalKey<NavigatorState> profileLevelNavigatorKey =
    GlobalKey<NavigatorState>();

List<Map<String, String>> circleCategoryList = [
  {
    "image": "",
    "title": "Fast Delivery",
  },
  {
    "image": "",
    "title": "Rings",
  },
  {
    "image": "",
    "title": "Sale",
  },
  {
    "image": "",
    "title": "Earrings",
  },
  {
    "image": "",
    "title": "Nosepins",
  },
  {
    "image": "",
    "title": "Men's Jewellery",
  },
  {
    "image": "",
    "title": "Budget",
  },
  {
    "image": "",
    "title": "Pendants",
  },
  {
    "image": "",
    "title": "Solitaires",
  },
  {
    "image": "",
    "title": "Chains",
  },
  {
    "image": "",
    "title": "Bracelets",
  },
  {
    "image": "",
    "title": "Second Piercing",
  },
  {
    "image": "",
    "title": "Bangles",
  },
  {
    "image": "",
    "title": "Necklaces",
  },
  {
    "image": "",
    "title": "All Jewellery",
  },
  {
    "image": "",
    "title": "Offers",
  },
];

const List<Map<String, String>> discoverCollection = [
  {
    "image": "",
    "collectionName": "Miracle Mesh",
  },
  {
    "image": "",
    "collectionName": "Loud Print",
  },
  {
    "image": "",
    "collectionName": "Playful Fringe Diamond",
  },
  {
    "image": "",
    "collectionName": "Bold Gold Chains",
  },
  {
    "image": "",
    "collectionName": "Powerful White Diamond",
  },
];

const List<String> ourAppBenefitList = [
  "BIS Hallmarked\nJewellery",
  "Cash/Card\non Delivery",
  "Lifetime\nExchange",
  "30 Day\nReturn Policy",
];

const List<Map<String, String>> budgetCategoryList = [
  {
    "title": "Under 50k",
    "quantity": "8900",
  },
  {
    "title": "Under 30k",
    "quantity": "6900",
  },
  {
    "title": "Under 20k",
    "quantity": "3200",
  },
  {
    "title": "Under 10k",
    "quantity": "280",
  },
];

const List<Map<String, String>> bestSellerList = [
  {
    "title": "22kt Elongated chain",
    "discountPrice": "25,656",
    "actualPrice": "29,397",
    "subTitle": "40% OFF On Making Charges",
  },
  {
    "title": "Feather Flow Gold chain",
    "discountPrice": "8,104",
    "actualPrice": "8,552",
    "subTitle": "15% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
  {
    "title": "22kt Hexagonal chain",
    "discountPrice": "41,953",
    "actualPrice": "45,085",
    "subTitle": "30% OFF On Making Charges",
  },
];

const List<Map<String, String>> exclusiveList = [
  {
    "title": "#LoveStartsWithSelf",
    "discountPrice":
        "Gift a heart in gold to yourself or your special someone!",
  },
  {
    "title": "Solitaire Rings",
    "discountPrice":
        "Plan your proposal to the T and make it a milestone with our range of solitaires.",
  },
  {
    "title": "Modular",
    "discountPrice":
        "Buy one, wear many! UnBore gold with our range of 3 in 1 styles that you can don from day to night",
  },
  {
    "title": "Affordable Diamonds",
    "discountPrice":
        "Diamonds are now Not expensive! Go for diamonds daily with our lowest priced diamond jewellery!",
  },
  {
    "title": "Under the Spotlight",
    "discountPrice":
        "From Rishikesh to Deoghar, everyday fine jewellery is now everywhere!",
  },
  {
    "title": "Ultra Light",
    "discountPrice":
        "Light in weight & light on the pocket! Explore our ultralight gold styles made for your everyday",
  },
  {
    "title": "What Shraddha Wore",
    "discountPrice": "Why wait, when there's Melorra!",
  },
];

const List<Map<String, String>> shopByCategories = [
  {
    "image": "",
    "name": "Rings",
    "startingPrice": "9,073",
  },
  {
    "image": "",
    "name": "Earrings",
    "startingPrice": "7,473",
  },
  {
    "image": "",
    "name": "Chains",
    "startingPrice": "10,235",
  },
  {
    "image": "",
    "name": "Necklaces",
    "startingPrice": "21,712",
  },
  {
    "image": "",
    "name": "Pendants",
    "startingPrice": "5,287",
  },
  {
    "image": "",
    "name": "Bangles",
    "startingPrice": "31,440",
  },
];

const List<Map<String, String>> categoriesPageList = [
  {
    "title": "Explore Chains",
    "subtitle": "Solo or stacked, chains for all your moods",
    "image": "",
  },
  {
    "title": "Explore Rings",
    "subtitle": "Bands or stack rings, there's a style for all",
    "image": "",
  },
  {
    "title": "Explore Earrings",
    "subtitle": "'I own too many earrings' - said no one ever",
    "image": "",
  },
  {
    "title": "Explore Nosepins",
    "subtitle": "Gold, solitaires or gemstones, nose pins for all",
    "image": "",
  },
  {
    "title": "Explore Pendants",
    "subtitle": "Glam up your neckline with pendants!",
    "image": "",
  },
  {
    "title": "Explore Bracelets",
    "subtitle": "Flexible styles for a flexible wardrobe",
    "image": "",
  },
  {
    "title": "Explore Necklaces",
    "subtitle": "From necklets to fashion chains, style it up!",
    "image": "",
  },
  {
    "title": "Explore Bangles",
    "subtitle": "Bangles that are light on weight, high on style",
    "image": "",
  },
  {
    "title": "Explore Gold Coins",
    "subtitle": "Prosperous wishes for your loved ones",
    "image": "",
  },
  {
    "title": "Explore Waist Chains",
    "subtitle": "The perfect add-on for all style statements",
    "image": "",
  },
  {
    "title": "Explore Second Ear-Piercing",
    "subtitle": "Bring your A-game with ear stackables!",
    "image": "",
  },
];

const List<String> goldWeightListFilter = [
  "Less than 2gms",
  "2gms to 4gms",
  "4gms to 6gms",
  "6gms to 8gms",
  "8gms to 10gms",
  "10gms and above",
];

const List<String> jewelleryTypeListFilter = [
  "Brass",
  "Silver",
  "Gold",
  "Diamonds",
  "Gemstones",
];

const List<String> quickShipListFilter = [
  "Ready to Ship",
];

const List<String> stylesListFilter = [
  "Regular Rings",
  "Studs",
  "Drops",
  "Short Necklaces",
  "Wide Rings",
  "Flexible Bracelets",
  "Solitaire",
  "Round Bangles",
  "Hoops",
  "Bands",
  "Necklets",
  "Second Piercing",
  "Oval Bangles",
  "J-Hoops",
  "Open Top Rings",
  "Cocktail Rings",
  "Pendant",
  "Lariats",
  "Huggies",
  "Ear Cuffs",
  "Charm Bracelets",
  "Shoulder Dusters",
  "Tennis Bracelets",
  "Banglets",
  "Chokers",
  "Cuffs",
  "Eternity Bangle",
  "Stack Rings",
  "Kada",
  "Charm Rings",
  "Regular Bracelets",
  "Fashion Chains",
  "Finger Sleeves",
  "Rakhi",
  "Open Top Bangles",
];

const List<String> categoryListFilter = [
  "Earrings",
  "Rings",
  "Necklaces",
  "Pendants",
  "Bangles",
  "Bracelets",
  "Chains",
  "Nose Pins",
  "Coins",
];

const List<String> metalColorsFilter = [
  "Yellow",
  "White",
  "Rose",
  "Multiple",
];

const List<String> occasionListFilter = [
  "Casual",
  "Party",
  "Work",
  "Traditional",
];

const List<String> virtualTryListFilter = [
  "Virtual Try-On",
];

const List<String> goldKaratListFilter = [
  "9 karat",
  "14 karat",
  "18 karat",
  "22 karat",
  "24 karat",
];

const List<String> genderListFilter = [
  "Women",
  "Men",
];

const List<Map<String, String>> availableOfferList = [
  {
    "title": "Flat 25% OFF on Product Value",
    "subtitle": "",
    "code": "",
    "valid": "Valid till 15th May",
  },
  {
    "title":
        "Extra \u{20b9}1000 Cashback on Mobikwik Wallet transactions on min spend of \u{20b9}20000",
    "subtitle": "",
    "code": "",
    "valid": "Valid till 30th Jun",
  },
  {
    "title":
        "Extra \u{20b9}500 Cashback on Mobikwik Wallet transactions on min spend of \u{20b9}8000",
    "subtitle": "",
    "code": "",
    "valid": "Valid till 30th Jun",
  },
  {
    "title": "FLAT \u{20b9}250 OFF",
    "subtitle": "Use code",
    "code": "OFFER250",
    "valid": "Valid till 30th Jun",
  },
];

const List<String> seasonCollection = [
  "Spring / Summer 2023",
  "Autumn / Winter 2022",
  "Spring / Summer 2022",
  "Autumn / Winter 2021",
  "Spring / Summer 2021",
  "Autumn / Winter 2020",
  "Spring / Summer 2020",
  "Autumn / Winter 2019",
  "Spring / Summer 2019",
  "Autumn / Winter 2018",
  "Spring / Summer 2018",
];
