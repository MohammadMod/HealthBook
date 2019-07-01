<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Matching Donors.aspx.cs" Inherits="HealthBook.Matching_Donors" %>
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
                <div class="col-md-8 align-self-center">
                    <h3 class="text_header">Matching Donors and Recipients</h3>
                    <p class="text-muted">
                        The Organ Procurement and Transplantation Network operates the national database of all patients in the U.S.
                        waiting for a transplant. OPTN's computer system matches the donor's organs to potential recipients.
                        The network has policies that regulate how donor organs are matched and allocated to patients on the waiting list. 
                        There are some common factors in how organs are matched, such as blood type and how long the patient has been waiting. 
                        However, depending on the organ, some factors become more important, so there is a different policy for each organ.
                        When matching organs from deceased donors to patients on the waiting list, many of the factors taken into consideration are the same for all organs.
                        These usually include:
                    </p>
                    <ul class="text-muted">
                        <li>Blood type</li>
                        <li>Body size</li>
                        <li>Severity of patient's medical condition</li>
                        <li>Distance between the donor's hospital and the patient's hospital</li>
                        <li>The patient's waiting time</li>
                        <li>Whether the patient is available (for example, whether the patient can be contacted and has no current infection or other temporary reason that transplant cannot take place)</li>
                    </ul>
                    <p class="text-muted">
                        Depending on the organ, however, some factors become more important. For example, some organs can survive outside the body longer than others.
                        So the distance between the donor's hospital and the potential recipient's hospital must be taken into consideration. 
                    </p>
                    <h3 class="text-header2">The Matching Process by Organ</h3>
                    <div id="accordion">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" data-toggle="collapse" type="button" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        How Are Hearts Matched?
                                    </button>
                                </h5>
                            </div>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    Living donors potentially can donate: People waiting for a heart transplant are assigned a status code,
                                    which indicates how urgently they need a heart. Because organs such as the heart and lungs can survive outside the body for only 4 to 6 hours,
                                    they are given first to people who live near the hospital where organs are recovered from the donor.
                                    If no one near the donor is a match for the heart, the transplant team starts searching progressively farther away to identify a recipient.
                                    Body size also is especially important in heart matching, as the donor's heart must fit comfortably inside the recipient's rib cage.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        How Are Lungs Matched?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    The lung allocation system uses information such as lab values, test results, and disease diagnosis—to arrive at
                                    a number which represents an estimate of the urgency of a candidate's need for transplant and the likelihood of prolonged survival following the transplant.
                                    This lung allocation score, and the common factors listed above, are considered to determine the order in which a donated lung is offered to potential recipients.
                                    Body size and distance between hospitals are especially important because lungs also must fit within the rib cage, and can survive outside the body for only 4 to 6 hours.
                                    Lungs are therefore offered first to people near the donor's hospital. If no one near the donor is a match for the lung, the recovery team starts searching progressively farther away.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        How Are Heart-Lungs Matched?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    Candidates for a heart-lung transplant are registered on both the OPTN Heart Waiting List and the OPTN Lung Waiting List. If a donor heart becomes available,
                                    the patient will receive a lung to go with it from the same donor. If a lung becomes available, the donor's heart will be given to the heart/lung patient as well.
                                    Because these organs can survive outside the body for only 4 to 6 hours, they are given first to people near the donor.
                                    If no one near the donor is a match for the heart and lungs, the recovery team starts searching farther away.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingFour">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapseThree">
                                        How Are Livers Matched
                                    </button>
                                </h5>
                            </div>
                            <div id="collapsefour" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    Candidates who need a liver transplant are assigned a MELD or PELD score (Model for End-Stage Liver Disease or Pediatric End-Stage Liver Disease) 
                                    that indicates how urgently they need the organ. A donor liver is offered first to the candidate who matches on the above common elements
                                    and has the highest MELD or PELD score first (indicating the most need).
                                    If the first recipient's surgeon does not accept the organ then the liver is offered to matching patients with the next highest
                                    MELD or PELD scores until the organ is accepted. Geographic factors are also taken into consideration, but livers can remain outside the
                                    body for 12 to 15 hours so they can travel farther than hearts and lungs.
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingFive">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                        How Are Kidneys Matched?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFive" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    The identification of potential recipients for a donor kidney involves the common elements noted above including blood type,
                                    length of time on the waiting list, whether the recipient is a child, and whether the body sizes of the donor and recipient
                                    are a good match. Other factors used to match kidneys include a negative lymphocytotoxic crossmatch and the number of HLA antigens
                                    in common between the donor and the recipient based on tissue typing. Many kidneys can stay outside the body for 36-48 hours so many
                                    more candidates from a wider geographic area can be considered in the kidney matching and allocation process than is the case for hearts or lungs.
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingsix">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapseThree">
                                        How Are Pancreata Matched?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapsesix" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    Candidates who are waiting for a pancreas transplant are matched to an available organ primarily based on blood type compatibility and the length 
                                    of time the patient has been on the waiting list. Since most pancreas transplants are performed at the same time as a kidney transplant,
                                    it is also necessary to match the kidney using the matching criteria described above for the kidney
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingseven">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed"type="button" data-toggle="collapse" data-target="#collapseseven" aria-expanded="false" aria-controls="collapseThree">
                                        How Are Intestines Matched?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseseven" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    When matching the donor intestine to a waiting list candidate, the ABO blood group must be identical because of the higher risk of graft-versus-host-disease (GVHD),
                                    a violent immune reaction by the lymphocytes within the donor organ against the recipient's body that can lead to death. Also,
                                    the abdominal cavity shrinks up in many patients waiting for an intestinal transplant so the donor must usually be considerably
                                    smaller than the recipient so that the intestine will fit into the smaller space. Finally, because intestinal transplant recipients
                                    can easily get a severe infection from cytomegalovirus (CMV) and Epstein Barr virus (EBV), patients who have never been exposed to CMV
                                    or EBV before are usually matched with donors who are similarly CMV-negative or EBV-negative respectively.
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-4 d-none d-md-block">
                    <img src="img/organimage.jpg" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </section>

</asp:Content>
