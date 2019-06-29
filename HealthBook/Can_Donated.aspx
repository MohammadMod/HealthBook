<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Can_Donated.aspx.cs" Inherits="HealthBook.Can_Donated" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="info" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-10 col-10 align-self-center">
                    <h3 class="text_header mb-3">What Can Be Donated</h3>
                    <p class="text-muted pb-4">
                        The list of organs and tissues that can be successfully transplanted continues to grow.
                        So does your ability to save and enhance lives as a donor. What can be donated?
                    </p>

                    <div id="accordion">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Organs
                                    </button>
                                </h5>
                            </div>

                            <div id="collapseOne" class="collapse show pl-3" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="card-body  text-muted">
                                    <p class="mb-2">
                                        Most often, organ donors are deceased, but some organs can be donated by living donors.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Deceased organ donors can donate:</strong>
                                        kidneys (2), liver, lungs (2), heart, pancreas, and intestines. In 2014, hands and faces were added to the organ transplant list.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Living organ donors can donate:</strong>
                                        one kidney, a lung, or a portion of the liver, pancreas, or intestine.
                                    </p>
                                    <p class="mb-2">
                                        Learn more about deceased donation, living donation, and the transplantation process.
                                    </p>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Corneas
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse pl-3" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <h6>
                                        By registering as an organ, eye, and tissue donor, you can also leave behind the gift of sight. Here are some facts about cornea and eye donation:
                                    </h6>
                                    <ul>
                                        <li>
                                            <div>
                                                Corneal transplants first performed: 1905
                                            </div>
                                        </li>
                                        <li>
                                            <div >
                                                Corneal transplants performed in 2017: 84,297
                                            </div>
                                        </li>
                                        <li>
                                            <div >
                                                The cornea is the clear part of the eye over the iris and pupil. People may have damaged corneas from eye disease, injury, or birth defects
                                            </div>
                                        </li>

                                        <li>
                                            <div >
                                                A corneal transplant involves replacing a diseased or scarred cornea with a new one
                                            </div>
                                        </li>
                                        <li>
                                            <div>
                                                Since 1961, more than 1,800,000 men, women, and children have had their sight restored through corneal transplantation.
                                            </div>
                                        </li>
                                        <li>
                                            <div>
                                                More than 95% of all corneal transplants are successful in restoring the recipient’s vision
                                            </div>
                                        </li>

                                        <li>
                                            <div>
                                                Corneal donors don't have to "match" recipients like organ donors do. Donors are universal.
                                                Your blood type and eye color don't have to match. Age, eye color and how good your eyesight is, do not matter
                                            </div>
                                        </li>

                                        <li>
                                            <div>
                                                Most people can donate their corneas. Exceptions include people with infections or a few highly communicable diseases such as HIV or hepatitis    
                                            </div>
                                        </li>

                                        <li>
                                            <div>
                                                Unlike organ donation, corneas can be recovered several hours after death and can be stored. A corneal transplant can be performed within 3-5 days after donation
                                            </div>
                                        </li>
                                        <li>
                                            <div>
                                                The white part of the eye is called the sclera, and that can be donated as well. The sclera can be used in operations to rebuild the eye.
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Tissues
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse ml-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p class="mb-2">
                                        Donated tissues save or dramatically improve the quality of life for the people who receive them. As an organ and tissue donor, you can enhance the lives of up to 50 people.
                                    </p>
                                    <p class="mb-2">
                                        Corneas, the middle ear, skin, heart valves, bone, veins, cartilage, tendons, and ligaments can be stored in tissue banks and used to restore sight,
                                        cover burns, repair hearts, replace veins, and mend damaged connective tissue and cartilage in recipients.
                                    </p>
                                    <p class="mb-2">
                                       <strong> Heart valves </strong> can be transplanted to save the lives of children born with heart defects, and adults with damaged heart valves.
                                    </p>
                                    <p class="mb-2">
                                       <strong>Skin </strong>can be used as a natural dressing for people with serious burns. It can even save lives by stopping infections.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Bone</strong>is important for people receiving artificial joint replacements, or replacing bone that has been removed due to illness or injury, for example in hand and face transplants.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Tendons</strong>,the elastic-like cords that attach bones and muscles to each other, can be donated to help rebuild damaged joints.
                                    </p>
                                    <p class="mb-2">
                                       <strong> Most people can be tissue donors when they die.</strong> The local tissue bank (a tissue recovery organization) will be notified by the hospital, medical examiner or funeral home.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Tissue donation must be initiated within 24 hours of death.</strong> However, tissue can be processed and stored for an extended period of time.
                                    </p>
                                    <p class="mb-2">
                                       <strong>Each year, about 30,000 donors</strong>  provide lifesaving and life-enhancing tissue.
                                    </p> 
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingFour">
                                <h5 class="mb-0">
                                    <button class="btn btn-link show collapsed" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapseThree">
                                        Hands and Face
                                    </button>
                                </h5>
                            </div>
                            <div id="collapsefour" class="collapse pl-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p class="mb-1">
                                        Hands and faces have recently been added to the list of organs that can be successfully transplanted.
                                    </p>
                                    <p class="mb-1">
                                        These complicated surgeries are technically called vascularized composite allograft (VCA) organ transplants
                                        because they are surgeries composed of grafting many kinds of tissue: bone, muscle, nerves, skin, and blood vessels.
                                    </p>
                                    <p class="mb-1">
                                        In 2005, the first hand transplants were performed, and in 2007, the first face transplant was performed. 
                                        Developments in immunosuppressive drugs help to keep these and all transplants from being rejected.
                                    </p>
                                    <p class="mb-1">
                                        As of January 2018, less than 200 VCA organ transplants have been performed around the world. But for the
                                        people who now have hands to use or a face to show the world, VCA transplants are transforming lives.
                                    </p>
                                </div>
                            </div>
                        </div>



                        <div class="card">
                            <div class="card-header" id="headingFive">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                        Blood Stem Cells, Cord Blood, and Bone Marrow
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFive" class="collapse pl-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p class="mb-2">
                                        Healthy adults between the ages of 18 - 60 can donate blood stem cells. In order for a blood stem cell transplant
                                        to be successful, the patient and the blood stem cell donor must have a closely matched tissue type or human leukocyte antigen (HLA).
                                    </p>
                                    <p class="mb-2">
                                        Since tissue types are inherited, patients are more likely to find a matched donor within their own family or racial/ethnic group.
                                        There are three sources of blood stem cells that healthy volunteers can donate:
                                    </p>
                                    <p class="mb-2">
                                        <strong>Bone marrow:</strong> This soft tissue is found in the interior cavities of bones. It is a major site of blood cell production and is removed to obtain stem cells.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Cord blood stem cells:</strong> The umbilical cord that connected a newborn to the mother during pregnancy contains blood that has been shown to 
                                        contain high levels of blood stem cells. Cord blood can be collected and stored in large freezers for a long period of time and, therefore,
                                        offers another source of stem cells available for transplanting into patients.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Peripheral blood stem cells:</strong> The same types of stem cells found in marrow can be pushed out into a donor's bloodstream after the donor receives daily
                                        injections of a medication called filgrastim. This medication increases the number of stem cells circulating in the blood and provides a source of donor
                                        stem cells that can be collected in a way that is similar to blood donation.
                                    </p>
                                    <p class="mb-2">
                                        If you are interested in donating blood stem cells, contact a donation organization.
                                    </p>
                                </div>
                            </div>
                        </div>


                        <div class="card">
                            <div class="card-header" id="headingsix">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapseThree">
                                        Blood and Platelets
                                    </button>
                                </h5>
                            </div>
                            <div id="collapsesix" class="collapse pl-3" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="card-body text-muted">
                                    <p class="mb-2">
                                        Blood and platelets are formed by the body, go through a life cycle, and are continuously replaced throughout life. This means
                                        that you can donate blood and platelets more than once. It is safe to donate blood every 56 days and platelets every four weeks.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Blood</strong> is stored in a blood bank according to type (A, B, AB, or O) and Rh factor (positive or negative). Blood can be used whole,
                                        or separated into packed red cells, plasma, and platelets, all of which have different lifesaving uses. It takes only about 10 minutes
                                        to collect a unit (one pint) of blood, although with the testing and screening, the process of donating blood takes about an hour.
                                    </p>
                                    <p class="mb-2">
                                        <strong>Platelets</strong> are tiny cell fragments that circulate throughout the blood and aid in blood clotting. Platelets can be donated without donating blood.
                                        When a specific patient needs platelets, but does not need blood, a matching donor is found and platelets are separated from the rest of the
                                        blood which is returned to the donor. The donor's body will replace the missing platelets within a few hours.
                                    </p>
                                    <p class="mb-2">
                                        If you are interested in donating blood and platelets, contact a blood donation organization.
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
