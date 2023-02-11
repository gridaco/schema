/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  transpilePackages: ["@grida/schema", "@grida/schema-react"],
};

module.exports = nextConfig;
