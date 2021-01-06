const Configurations = {
    custom: {
        appBar: {
            logo: '/site/public/images/logo.svg',
            logoHeight: 50,
            logoWidth: 300,
            background: '#196100',
            backgroundImage: '/site/public/images/appbarBack.png',
            searchInputBackground: '#fff',
            searchInputActiveBackground: '#fff',
            activeBackground: '#293D02',
            showSearch: true,
            drawerWidth: 200,
        },
        leftMenu: {
            position: 'vertical-left', // Sets the position of the left menu ( 'horizontal', 'vertical-left', 'vertical-right')
            style: 'icon left', //  other values ('icon top', 'icon left', 'no icon', 'no text')
            iconSize: 24,
            leftMenuTextStyle: 'uppercase',
            width: 180,
            background: '#196100',
            backgroundImage: '/site/public/images/leftMenuBack.png',
            leftMenuActive: '#196100',
            leftMenuActiveSubmenu: '#196100',
            activeBackground: '#196100',
            rootIconVisible: true,
            rootIconSize: 42,
            rootIconTextVisible: false,
            rootBackground: '#000',
        },
        footer: {
            active: true,
            text: 'Spark Health IPaaS Developer Portal v1.0', // Leave empty to show the default WSO2 Text. Provide custom text to display your own thing.
            background: '#000',
            color: '#fff',
        },
        infoBar: {
            height: 70,
            background: '#ffffff',
            showThumbnail: true,
            starColor: '#293D02', // By default the opasite color of infoBar.background is derived. From here you can override it.
            sliderBackground: '#293D02',
            iconOddColor: '#293D02',
            iconEvenColor: '#293D02',
            listGridSelectedColor: '#293D02', // Defines color of the selected icon ( grid/ list ) view of the api listing page
            tagChipBackground: '#293D02',
        },
       
        
    },

};
