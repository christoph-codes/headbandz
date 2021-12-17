<script>
    import Header from '../components/Header.svelte';
    import Footer from '../components/Footer.svelte';
</script>
<style type="text/scss">
    .layout {
        display: flex;
        flex-direction: column;
        height: 100vh;
        .container {
            flex: 1;
        }
    }
</style>
<div class="layout">
    <Header/>
    <div class="container">
        <slot/>
        </div>
    <Footer/>
</div>