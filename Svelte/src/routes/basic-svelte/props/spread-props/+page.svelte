<script>
  import PackageInfo from "./PackageInfo.svelte";

  const pkg = {
    name: "svelte",
    speed: "blazing",
    version: 4,
    website: "https://svelte.dev",
  }
</script>

<main>
  <PackageInfo {...pkg}/>
</main>