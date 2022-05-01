module.exports = {
    purge: {
        content: ["./src/**/*.{html,js}"]
    },
    darkMode: false, // or 'media' or 'class'
    theme: {
        colors: {
            'orange': '#f97316',
            'white': '#fafafa',
            'bluegrey': '#DCE9F9',
            'indigo': '#441DAF',
            'slate': '#03254E',
            'specialblue': '#7B80CC',
            'red': '#FF4747',
            'grey': '#E0E0E0'
        },
        extend: {},
    },
    variants: {
        extend: {},
    },
    plugins: [
        require('@tailwindcss/aspect-ratio')
    ],
}