<style type="text/scss">
    :root {
        --primary: #D6FC35;
        --secondary: #3D3B34;
        --secondary-dark: #44423A;
    }
    :global(*){
        font-family: 'Roboto', sans-serif;
    }
    :global(body){
        margin: 0;
        padding: 0;
        background-color: var(--secondary);
        overscroll-behavior: none;
    }
    :global(h1,h2,h3,h4,h5,h6,li,a,p) {
        margin: 0 0 0.5rem;
        padding: 0;
    }
    :global(h1,.h1) {
        font-size: 2.5rem;
        line-height: 1.2;
    }
</style>