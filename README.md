# MDN client toolchain example

This client toolchain example is the accompanying source code for the MDN [Understanding client-side web development tools](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Introducing_complete_toolchain) documentation.

You can view a live deployment of the project at <https://mdn.github.io/client-toolchain-example/>.

## Getting Started

Clone the repository and start a local build for the Ubuntu/Debian based distros:

```bash
sudo apt update

# Install the specific version of node you want
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -

sudo apt install nodejs -y

# Install the specific version of npm you want inside your lightweight container, you just add a RUN command right after the base image:
# RUN npm install -g npm@11.18.0

sudo apt install npm -y

git clone https://github.com/Prozects/client-toolchain-example.git

cd client-toolchain-example

# Install the Dependencies
npm install

# Start the Server
npm run dev -- --host 0.0.0.0 --port 3000
```

If you are stuck, see the instructions [in the accompanying MDN docs](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Introducing_complete_toolchain#running_the_transformation).

## Contributing

Our project welcomes contributions from any member of our community.
To get started contributing, please see our [Contributor Guide](CONTRIBUTING.md).

By participating in and contributing to our projects and discussions, you acknowledge that you have read and agree to our [Code of Conduct](CODE_OF_CONDUCT.md).

## License

This project is licensed under the [LICENSE](LICENSE.md).
