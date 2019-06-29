<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Living_Donation.aspx.cs" Inherits="HealthBook.Living_Donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header id="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3 text-center">
                </div>
            </div>
        </div>
    </header>

    <section id="info" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-10 col-10 align-self-center">
                    <h3 class="text_header mb-3">The Living Donation Process</h3>
                    <p class="text-muted">
                        Most organ and tissue donations occur after the donor has died. But some organs and tissues can be donated while the donor is alive.
                        Nearly 6,000 living donations take place each year. That's about 4 out of every 10 donations.
                    </p>
                    <p class="text-muted">
                        Most living donations happen among family members or between close friends.
                        Some people become altruistic living donors by choosing to donate to someone they don’t know.
                    </p>

                    <div id="accordion">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Living Organ Donation
                                    </button>
                                </h5>
                            </div>

                            <div id="collapseOne" class="collapse show pl-3" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body  text-muted">
                                    <h6>Living donors potentially can donate:</h6>
                                    <ul>
                                        <li>
                                            <strong class="d-block">One of two kidneys.
                                            </strong>

                                            <div class="">
                                                A kidney is the most frequently donated organ from a living donor. The donor's remaining kidney provides the necessary function needed to remove waste from the body.
                                            </div>
                                        </li>
                                        <li>
                                            <strong class="d-block">One of two lobes of their liver. 
                                            </strong>
                                            <div class="">
                                                Cells in the remaining lobe of the liver grow or regenerate until the liver is almost its original size. 
                                                This re-growth of the liver occurs in a short period of time in both the donor and recipient.
                                            </div>
                                        </li>
                                        <li>
                                            <strong class="d-block">A lung or part of a lung, part of the pancreas, or part of the intestines.
                                            </strong>
                                            <div class="">
                                                Although these organs do not regenerate, both the donated portion of the organ and the portion remaining with the donor are fully functioning.
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Living Tissue Donation
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse pl-3" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <h6>Some of the tissues donated by living donors are:</h6>
                                    <ul>
                                        <li>
                                            <div class="">
                                                Skin, after certain surgeries such as an abdominoplasty
                                            </div>
                                        </li>
                                        <li>
                                            <div class="">
                                                Bone after knee and hip replacements
                                            </div>
                                        </li>
                                        <li>
                                            <div class="">
                                                Healthy cells from bone marrow and umbilical cord blood
                                            </div>
                                        </li>

                                        <li>
                                            <div class="">
                                                Amnion, donated after childbirth
                                            </div>
                                        </li>
                                        <li>
                                            <div class="">
                                                Blood, including white and red blood cells, platelets, and the serum that carries blood cells throughout the circulatory system.    
                                            </div>
                                        </li>
                                    </ul>
                                    <h6 class="col-8 text-muted">A healthy body can easily replace some tissues such as blood or bone marrow.
                                        Both blood and bone marrow can even be donated more than once since they are regenerated and replaced by the body after donation.

                                    </h6>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Suitability to Donate
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse ml-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    Potential living donors are evaluated by the transplant center where they intend to make the donation to determine whether they are suitable to be a donor.
                                    The evaluation is performed to make sure that no adverse physical, psychological, or emotional outcome will occur—before, during, or following the donation.
                                    Generally, living donors should be physically fit, in good health, between the ages of 18 and 60, and should not have (or have had) diabetes, cancer, high blood pressure, kidney disease, or heart disease.
                                    The benefit of saving another by becoming a living donor must be weighed carefully against the risks that come with any major surgical procedure, as well as financial considerations. A healthy donor faces the risk of an unnecessary major surgical procedure and recovery.
                                    
                                    <ul class="col-8">
                                        <li>
                                            <div class="">
                                                A small percentage of patients have had problems maintaining life, disability, or medical insurance coverage at the same level and rate as previously.
                                            </div>
                                        </li>
                                        <li>
                                            <div class="">
                                                There can be financial concerns due to possible delays in returning to work because of unforeseen medical problems.
                                            </div>
                                        </li>
                                        <li>
                                            <div class="">
                                                As with any major surgical procedure, there is a small risk of complications and/or death.
                                            </div>
                                        </li>
                                    </ul>
                                    <p class="text-muted">
                                        You can find out more information about living kidney donation from the National Kidney Foundation HRSA exit disclaimer or from Informate.
                                        org HRSA exit disclaimer a site in both Spanish and English that discusses financial issues and benefits and risks.
                                    </p>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingFour">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapseThree">
                                        Long-term Effects and Follow-up
                                    </button>
                                </h5>
                            </div>
                            <div id="collapsefour" class="collapse pl-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    The National Institutes of Health (NIH) is conducting a study to collect information on the outcomes of living donors over time. At present,
                                    follow-up reviews of living donors by some transplant centers show that living donors, on average, have done very well over the long term.
                                    However, there is some question about the effects of stress on the remaining organ. There could be subtle medical problems that do not develop
                                    until decades after the living donation. The effects are not completely known at this time. To better understand the safety of all living donors,
                                    it is critical that the long-term effects of living donation are studied further.
                                </div>
                            </div>
                        </div>



                        <div class="card">
                            <div class="card-header" id="headingFive">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                        The Decision to Donate
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFive" class="collapse pl-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p class="mb-2">
                                        The decision to be a living donor is very personal one. The potential donor must consider the possibility of adverse health effects 
                                        after donation—as well as the potential to save the life of the recipient, who may be a loved one.
                                    </p>
                                    <p class="mb-2">
                                        However, the Federal government does recognize the wonderful benefit that this gift of life provides to the patient awaiting a 
                                        transplant and has several ongoing programs to study, support, and protect the living donors who do choose to provide this gift.
                                    </p>
                                    <p class="mb-2">
                                        The decision to say yes both to organ donation after death and/or as a living donor is the focus of several ongoing and completed research
                                        projects conducted across the nation, many of which are supported by the Division of Transplantation, Health Resources and Services Administration,
                                        U.S. Department of Health and Human Services.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingsix">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapseThree">
                                        Grants and Assistance for Living Organ Donors
                                    </button>
                                </h5>
                            </div>
                            <div id="collapsesix" class="collapse pl-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p>
                                        The Regents of the University of Michigan (Michigan), in partnership with the American Society of Transplant Surgeons (ASTS),
                                        has been operating this Program under a cooperative agreement with HRSA since 2006. The National Living Donor Assistance Center
                                        (NLDAC) was established to increase access to transplantation, particularly for individuals of lesser financial means.
                                        The Program does not promote living organ donation and it has no performance goals for increasing the number of living organ donors.
                                        The NLDAC   helps potential donors with travel, lodging, and meal expenses associated with the organ donation process.
                                        These expenses may not be supported under any state compensation program, insurance policy, or under any federal or state health benefits program;
                                        by an entity that provides health services on a prepaid basis; or by the recipient of the organ.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingseven">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseseven" aria-expanded="false" aria-controls="collapseThree">
                                        Support Groups and Resources for Living Donors
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseseven" class="collapse ml-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p class="mb-2">
                                        You can find more information about living donation at the United Network for Organ Sharing (UNOS) website on their Living Donation page
                                        and at the National Kidney Foundation website on their Living Donation page.
                                    </p>
                                    <p class="mb-2">
                                        UNOS is the Federal contractor that manages the Organ Procurement and Transplantation Network (OPTN). UNOS also has a toll free number for any
                                        questions you may have about living donation, transplant centers, or the transplant process. The number is 1.888.TXINFO1 (894.6361).
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
