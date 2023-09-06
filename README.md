<a name="readme-top"></a>

<h1 align='center'><b>SKILL HABOUR BACKEND</b></h1>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [Skill Habour ](#skill-habour-)
- [🛠 Built With ](#-built-with-)
  - [Tech Stack ](#tech-stack-)
- [💮 Key Features ](#-key-features-)
- [🚀 Important Links ](#-important-links-)
    - [FRONTEND REPOSITORY](#frontend-repository)
    - [KANBAN BOARD](#kanban-board)
- [💻 Getting Started ](#-getting-started-)
  - [Prerequisites ](#prerequisites-)
  - [🧰 Setup ](#-setup-)
  - [🔧 Install ](#-install-)
  - [🪜 Usage ](#-usage-)
- [🧑🏽‍💻 Authors ](#-authors-)
- [🔭 Future Features ](#-future-features-)
- [🤝 Contributing ](#-contributing-)
- [⭐️ Show your support ](#️-show-your-support-)
      - [⭐️⭐️⭐️⭐️ Star the repository 💸](#️️️️-star-the-repository-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
- [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# Skill Habour <a name="about-project"></a>

**🎓 Skill Habour** is a cheap platform that helps you  dive into a sea of knowledge without breaking the bank! 🌊 Skill Harbour is your secret treasure trove for affordable courses that won't leave your wallet high and dry.

# 🛠 Built With <a name="built-with"></a>

## Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Client</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">ReactJS</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


<!-- Features -->

# 💮 Key Features <a name="key-features"></a>

- **User can authenticate**
- **User can browse a list of courses**
- **User can reserve or enroll in a course**
- **User can check their reservations**
- **The application is responsive**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

# 🚀 Important Links <a name="important-links"></a>

<!-- ### [LIVE DEMO]() -->
### [FRONTEND REPOSITORY](https://github.com/coderacheal/skill-habour-fe)
### [KANBAN BOARD](https://github.com/users/coderacheal/projects/5/views/1)
<!-- ### [API DOCUMENTATION]() -->


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

# 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

## Prerequisites <a name="prerequisites"></a>

  
## 🧰 Setup <a name="setup"></a>

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone https://github.com/coderacheal/skill-habour-be.git
```

## 🔧 Install <a name="install"></a>

Install this project with:

```sh
  cd skill-habour-be
  
  bundle install

  rails db:create

  rails db:migrate

  rails db:seed
```

**Database Setup Troubleshooting: Missing Master Key**

1. **Remove Existing Configuration Files**: First, check if `config/master.key` and `config/credentials.yml.enc` exist in your project directory. If they do, remove them.

2. **Edit Credentials**: Open your terminal and run the following command:

    ```bash
    EDITOR=code rails credentials:edit
    ```

    Replace `code` with your preferred text editor (e.g., `nano`, `vim`, or `subl`, depending on your setup).

3. **Generate New Master Key**: The previous step will generate a new `master.key` and `credentials.yml.enc` if they don't already exist in your project directory.


## 🪜 Usage <a name="usage"></a>

To run the project, execute the following command:

```sh
  
  rails s -p3001
  
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

# 🧑🏽‍💻 Authors <a name="authors"></a>

🤓 **Racheal Appiah-kubi**

- GitHub: [@coderacheal](https://github.com/coderacheal)
- LinkedIn: [Racheal Appiah-kubi](https://www.linkedin.com/in/racheal-appiah-kubi/)

🤓 **Atif Zada**

- GitHub: [@AtifZada](https://github.com/Atifzada)
- LinkedIn: [Atif Zada](https://www.linkedin.com/in/atif-zada)

🤓 **Ouail Laarabi**

- GitHub: [@Ouail-01](https://github.com/Ouail-01)
- LinkedIn: [Ouail Laarabi](https://www.linkedin.com/in/ouail-laarabi/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

# 🔭 Future Features <a name="future-features"></a>

- [ ] **User can update their reservation**
- [ ] **Admin can add and update information about courses**
- [ ] **User can rate their experience**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

# 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

# ⭐️ Show your support <a name="support"></a>

#### ⭐️⭐️⭐️⭐️ Star the repository 💸


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

We would like to thank: 
- Microverse for all the provided guidance
- [Murat Korkmaz](https://www.behance.net/muratk) for providing the original [design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

# 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
