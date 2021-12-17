<script>
        import FaChevronRight from 'svelte-icons/fa/FaChevronRight.svelte';
    </script>
<style lang="scss">
    .Footer {
        background-color: var(--secondary-dark);
        padding: 0.5rem;
        display: flex;
        justify-content: space-between;
        p, a {
            color: var(--primary);
            text-decoration: none;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 0.25rem;
            font-size: 0.75rem;
            margin: 0;
            vertical-align: center;
            .icon {
                max-width: 1.5rem;
            }
        }
    }
</style>

<footer class="Footer">
    <p>Headbandz</p>
    <a href="https://opensea.io/collection/headbandz" alt="OpenSea Link to Headbandz">OpenSea <FaChevronRight class="icon" /></a>
</footer>