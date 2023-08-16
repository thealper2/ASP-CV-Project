<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>CV Project</title>
    <link rel="icon" type="image/x-icon" href="startbootstrap-resume-gh-pages/assets/img/favicon.ico" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <link href="startbootstrap-resume-gh-pages/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <asp:Repeater ID="Repeater8" runat="server">
                <ItemTemplate>
                    <span class="d-block d-lg-none">
                        <asp:Label ID="TxtHead" runat="server" Text='<%# Eval("NAME") + " " + Eval("SURNAME") %>'></asp:Label>
                    </span>
                    <span class="d-none d-lg-block">
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src='<%# Eval("IMAGE") %>' alt="..."/>
                    </span>
                </ItemTemplate>
            </asp:Repeater>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Deneyimler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Eğitim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Yetenekler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#hobbies">Hobiler</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Ödüller</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#certificates">Sertifikalar</a></li>
            </ul>
        </div>
    </nav>



    <div class="container-fluid p-0">
        <section class="resume-section" id="about">
            <div class="resume-section-content">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <h1 class="mb-0">

                            <asp:Label ID="TxtName" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="TxtSurname" runat="server" Text='<%# Eval("SURNAME") %>'></asp:Label>
                            </span>
                        </h1>
                        <div class="subheading mb-5">
                            Adres:
                            <asp:Label ID="TxtAddress" runat="server" Text='<%# Eval("ADDRESS") %>'></asp:Label>
                            Telefon:
                            <asp:Label ID="TxtPhone" runat="server" Text='<%# Eval("PHONE") %>'></asp:Label>

                            <a href="mailto:name@email.com">Mail:
                                <asp:Label ID="TxtMail" runat="server" Text='<%# Eval("MAIL") %>'></asp:Label>
                            </a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="TxtAbout" runat="server" Text='<%# Eval("ABOUT") %>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>



        <hr class="m-0" />
        <section class="resume-section" id="experience">
            <div class="resume-section-content">
                <h2 class="mb-5">DENEYIMLER</h2>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="TxtExperienceTitle" runat="server" Text='<%# Eval("EXPERIENCETITLE") %>'></asp:Label>
                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="TxtExperienceSubtitle" runat="server" Text='<%# Eval("EXPERIENCESUBTITLE") %>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="TxtExperienceDescription" runat="server" Text='<%# Eval("EXPERIENCEDESCRIPTION") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="TxtExperienceYear" runat="server" Text='<%# Eval("EXPERIENCEYEAR") %>'></asp:Label>
                                </span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>



        <hr class="m-0" />
        <section class="resume-section" id="education">
            <div class="resume-section-content">
                <h2 class="mb-5">Eğitim</h2>
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0">
                                    <asp:Label ID="TxtEducationName" runat="server" Text='<%# Eval("EDUCATIONNAME") %>'></asp:Label>
                                </h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="TxtEducationType" runat="server" Text='<%# Eval("EDUCATIONTYPE") %>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="TxtEducationDescription" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                                </div>
                                <p>
                                    GPA: 
                                    <asp:Label ID="TxtGnot" runat="server" Text='<%# Eval("GNOT") %>'></asp:Label>
                                </p>
                            </div>
                            <div class="flex-shrink-0">
                                <span class="text-primary">
                                    <asp:Label ID="TxtEducationYear" runat="server" Text='<%# Eval("EDUCATIONYEAR") %>'></asp:Label>
                                </span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>



        <hr class="m-0" />
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">Yetenekler</h2>
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <div class="subheading mb-3">
                            *
                            <asp:Label ID="TxtAbilityName" runat="server" Text='<%# Eval("ABILITYNAME") %>'></asp:Label>
                        </div>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li">
                                    <i class="fas fa-check"></i>
                                </span>
                                <asp:Label ID="TxtAbilityDescription" runat="server" Text='<%# Eval("ABILITYDESCRIPTION") %>'></asp:Label>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>



        <hr class="m-0" />
        <section class="resume-section" id="hobbies">
            <div class="resume-section-content">
                <h2 class="mb-5">Hobiler</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <p class="mb-0">
                            <i class="fas fa-check"></i>
                            <asp:Label ID="TxtHobbyName" runat="server" Text='<%# Eval("HOBBYNAME") %>'></asp:Label>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>



        <hr class="m-0" />
        <section class="resume-section" id="awards">
            <div class="resume-section-content">
                <h2 class="mb-5">Oduller</h2>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li">
                                    <i class="fas fa-trophy text-warning"></i>
                                </span>
                                <div class="flex-grow-1">
                                    <h3 class="mb-0">
                                        <asp:Label ID="TxtAwardName" runat="server" Text='<%# Eval("AWARDNAME") %>'></asp:Label>
                                    </h3>
                                    <div>
                                        <asp:Label ID="TxtAwardDescription" runat="server" Text='<%# Eval("AWARDDESCRIPTION") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="flex-shrink-0">
                                    <span class="text-primary">
                                        <asp:Label ID="TxtAwardYear" runat="server" Text='<%# Eval("AWARDDATE") %>'></asp:Label>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>



        <hr class="m-0" />
        <section class="resume-section" id="certificates">
            <div class="resume-section-content">
                <h2 class="mb-5">Sertifikalar</h2>
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li">
                                    <i class="fas fa-trophy text-warning"></i>
                                </span>
                                <div class="flex-grow-1">
                                    <h3 class="mb-0">
                                        <asp:Label ID="TxtCertificateYearName" runat="server" Text='<%# Eval("CERTIFICATENAME") %>'></asp:Label>
                                    </h3>
                                </div>
                                <div class="flex-shrink-0">
                                    <span class="text-primary">
                                        <asp:Label ID="TxtCertificateYear" runat="server" Text='<%# Eval("CERTIFICATEYEAR") %>'></asp:Label>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="startbootstrap-resume-gh-pages/js/scripts.js"></script>
</body>
</html>
