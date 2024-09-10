import 'package:cares_app/widgets/information.dart';
import 'package:flutter/material.dart';

class TypesOfCancer extends StatefulWidget {
  const TypesOfCancer({super.key});

  @override
  State<TypesOfCancer> createState() => _TypesOfCancerState();
}

class _TypesOfCancerState extends State<TypesOfCancer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        width: width * 0.95,
        child: Column(
          children: [
            //Main Card
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.275,
              width: width * 0.945,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white10,
                    width: width * 0.005,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.3)),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Container(
                    height: height * 0.16,
                    width: width * 0.916,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Image(
                      image: AssetImage('assets/types_of_cancer.jfif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'Various types of Cancer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: width * 0.038),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onDoubleTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Information(
                                  path: 'assets/types_of_cancer.jfif',
                                  heading: 'Various types of Cancer',
                                  description:
                                      "Cancer is a broad term for a group of diseases characterized by uncontrolled growth and spread of abnormal cells. There are many types of cancer, each originating from different types of cells in various parts of the body.\n\n Here’s an overview of the major types of cancer:\n Carcinomas are the most common type of cancer, arising from epithelial cells that line the inside and outside surfaces of the body. Adenocarcinoma, Squamous Cell Carcinoma, Basal Cell Carcinoma, Sarcomas, Osteosarcoma, Chondrosarcoma, Liposarcoma, Rhabdomyosarcoma, Leukemias, ALL, Chronic Lymphocytic Leukemia (CLL), Acute Myeloid Leukemia (AML), Chronic Myeloid Leukemia (CML), Lymphomas, Hodgkin Lymphoma (HL), Non-Hodgkin Lymphoma (NHL), Diagnosis and Staging, Prognosis, Research and Future Directions."),
                            ),
                          ),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      'Types of cancer are classified based on the origin of the cancerous cells, such as in tissues, blood, or organs.',
                                  style: TextStyle(
                                      fontFamily: 'josefin',
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: width * 0.035,
                                      height: height * 0.0016),
                                  children: [
                                TextSpan(
                                  text: ' click twice to read more..',
                                  style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: width * 0.028,
                                      decoration: TextDecoration.underline),
                                ),
                              ])),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Sub-Card 1

            SizedBox(
              height: height * 0.01,
            ),
            Container(
                height: height * 0.15,
                width: width * 0.945,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                      width: width * 0.005,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3)),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onDoubleTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Information(
                                path: 'assets/Carcinomas.JPG',
                                heading: 'Carcinomas',
                                description:
                                    "Carcinomas, accounting for 80-90% of diagnosed cancers, arise from epithelial cells that form organ linings and body surfaces.\n Mutations in these cells cause uncontrolled growth, leading to various subtypes:\n Basal Cell Carcinoma (BCC), slow-growing and rarely spreading but locally damaging if untreated; Squamous Cell Carcinoma (SCC), more aggressive and likely to spread to lymph nodes and other body parts; Adenocarcinoma (ADC), arising from glandular tissues and common in breast, colon, prostate, and lung cancers; and Transitional Cell Carcinoma (TCC), found in organs with transitional epithelium like the urinary bladder and parts of the kidney.\n\n  Carcinomas spread through local invasion, lymphatic spread, and bloodstream invasion. Risk factors include age, lifestyle choices like smoking and excessive sun exposure, harmful dietary habits, chronic inflammatory conditions, and family history. Preventive measures include maintaining a healthy weight, eating a balanced diet, limiting alcohol consumption, sun protection, and vaccinations against HPV and Hepatitis B. Early detection through regular screenings like mammograms and colonoscopies is crucial for effective treatment. Treatment options include surgery, radiation therapy, chemotherapy, and immunotherapy. Understanding carcinomas, their risk factors, and the importance of prevention and early detection empowers us to fight this formidable foe."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Carcinomas\n',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontSize: width * 0.038,
                                    fontWeight: FontWeight.bold,
                                    height: height * 0.0016),
                                children: [
                              TextSpan(
                                  text: '\n',
                                  style: TextStyle(fontSize: height * 0.008)),
                              TextSpan(
                                text:
                                    'These cancers start in the skin or the tissues that line internal organs. They are the most common type of cancer',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' click twice to read more..',
                                style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: width * 0.028,
                                    decoration: TextDecoration.underline),
                              ),
                            ])),
                      ),
                    ),
                    Container(
                        height: height * 0.136,
                        width: width * 0.3,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Image(
                            image: AssetImage('assets/Carcinomas.JPG'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),

            //Sub-Card 2

            SizedBox(
              height: height * 0.01,
            ),
            Container(
                height: height * 0.15,
                width: width * 0.945,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                      width: width * 0.005,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3)),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onDoubleTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Information(
                                path: 'assets/Sarcomas.JPG',
                                heading: 'Sarcomas',
                                description:
                                    "Sarcomas, though less common than carcinomas, represent a unique and challenging group of cancers originating from mesenchymal cells, the builders of our connective tissues, including bones, muscles, fat, and blood vessels. These cancers arise when mutations in the DNA of these cells lead to uncontrolled growth, manifesting in various subtypes based on the type of connective tissue involved. For instance, osteosarcoma is the most common bone cancer, typically affecting teenagers and young adults and often spreading to the lungs.\n Chondrosarcoma develops in cartilage cells and can vary in aggressiveness, while liposarcoma arises from fat cells, usually in the deep soft tissues of the thighs or retroperitoneum, with behaviors ranging from indolent to highly aggressive. Leiomyosarcoma, originating from smooth muscle cells in organs like the uterus and stomach, and rhabdomyosarcoma, arising from skeletal muscle cells and more common in children, both represent highly aggressive forms of sarcoma that can spread rapidly.\n\n  Sarcomas spread through local invasion, lymphatic spread, and bloodstream invasion, making them highly invasive and capable of metastasizing to distant organs such as the lungs and liver. Risk factors include genetic predispositions like Li-Fraumeni syndrome, previous radiation therapy, exposure to certain chemicals, and chronic lymphedema. While many sarcomas are not preventable through lifestyle changes, maintaining overall health through regular exercise, a healthy diet, and avoiding known carcinogens can still be beneficial. Early detection is challenging but crucial, with treatment options including surgery to remove the tumor, radiation therapy, chemotherapy, and targeted therapies aimed at specific cancer cell pathways. Understanding sarcomas and their risk factors, along with the importance of early detection and comprehensive treatment, is essential for improving outcomes for those affected by this formidable group of cancers."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Sarcomas\n',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontSize: width * 0.038,
                                    fontWeight: FontWeight.bold,
                                    height: height * 0.0016),
                                children: [
                              TextSpan(
                                  text: '\n',
                                  style: TextStyle(fontSize: height * 0.008)),
                              TextSpan(
                                text:
                                    'Sarcomas are cancers that begin in the bones, cartilage, fat, muscle, blood vessels, or other connective or supportive tissues.',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' click twice to read more..',
                                style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: width * 0.028,
                                    decoration: TextDecoration.underline),
                              ),
                            ])),
                      ),
                    ),
                    Container(
                        height: height * 0.136,
                        width: width * 0.3,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Image(
                            image: AssetImage('assets/Sarcomas.JPG'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),

            //Sub-Card 3

            SizedBox(
              height: height * 0.01,
            ),
            Container(
                height: height * 0.15,
                width: width * 0.945,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                      width: width * 0.005,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3)),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onDoubleTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Information(
                                path: 'assets/Leukemias.jfif',
                                heading: 'Leukemias',
                                description:
                                    "Leukemias are a group of cancers that affect the blood and bone marrow, leading to the overproduction of abnormal white blood cells. The information gathered from various studies provides insights into the genetic, molecular, and environmental factors influencing the development, treatment, and outcomes of leukemia.\n\n  Genetic and molecular markers play a crucial role in understanding the response to treatment and the likelihood of adverse events in pediatric acute lymphoblastic leukemia (pALL) patients.\n Polymorphisms in genes encoding proteins involved in methotrexate (MTX) metabolism, such as SLC19A1, MTHFR, and TYMS, were found to be associated with treatment-related adverse effects (Cancer chemotherapy and pharmacology). Additionally, the study of RAM-phenotype acute myeloid leukemia (RAM-AML) revealed distinct immunophenotypic features, such as CD36-negative expression, which can serve as a novel addition to the immunophenotypic signature of this entity (Cytometry. Part B, Clinical cytometry). Socioeconomic and parental factors were found to influence ninth-grade school performance in childhood leukemia survivors, with differences observed between leukemia and central nervous system (CNS) tumor survivors. This suggests that impairment of school-related functions differs between these groups, highlighting the need for tailored support (JNCI cancer spectrum). Furthermore, the risk of pediatric leukemia relapse was found to be higher in Hispanic children compared to non-Hispanic Whites, particularly in younger children (Clinical pediatrics).\n\n  In the context of treatment, a phase 1/2 study evaluated the combination of eprenetapopt and venetoclax with or without azacitidine in patients with TP53-mutated acute myeloid leukemia, showing an acceptable safety profile and encouraging activity (The Lancet. Haematology). Additionally, a study on CPX-351 followed by fludarabine, cytarabine, and granulocyte-colony stimulating factor for children with relapsed acute myeloid leukemia demonstrated the potential of this combination in the treatment of relapsed AML (Journal of clinical oncology : official journal of the American Society of Clinical Oncology).\n\n  Environmental factors, such as exposure to extremely low-frequency magnetic fields (ELF-MF) from power lines, have been investigated in relation to childhood leukemia risk. A population-based case-control study in Denmark found no higher risk of leukemia for children living near power lines, suggesting that the slightly elevated risk observed was likely due to chance (Cancer causes & control : CCC).\n\n  Overall, these findings underscore the multifactorial nature of leukemia, encompassing genetic, molecular, socioeconomic, and environmental influences, and highlight the importance of personalized medicine and tailored support for leukemia patients. Ongoing research into genetic markers, treatment combinations, and environmental exposures continues to advance our understanding of leukemia and improve patient outcomes."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Leukemias\n',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontSize: width * 0.038,
                                    fontWeight: FontWeight.bold,
                                    height: height * 0.0016),
                                children: [
                              TextSpan(
                                  text: '\n',
                                  style: TextStyle(fontSize: height * 0.008)),
                              TextSpan(
                                text:
                                    'Leukemias are cancers of the blood and bone marrow. They lead to the production of abnormal blood cells.',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' click twice to read more..',
                                style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: width * 0.028,
                                    decoration: TextDecoration.underline),
                              ),
                            ])),
                      ),
                    ),
                    Container(
                        height: height * 0.136,
                        width: width * 0.3,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Leukemias.jfif'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),

            //SUb-Card 4

            SizedBox(
              height: height * 0.01,
            ),
            Container(
                height: height * 0.16,
                width: width * 0.945,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                      width: width * 0.005,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3)),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onDoubleTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Information(
                                path: 'assets/Lymphomas.jfif',
                                heading: 'Lymphomas',
                                description:
                                    "Lymphomas are a diverse group of blood cancers that originate from lymphocytes, a type of white blood cell. They are broadly categorized into Hodgkin lymphoma and non-Hodgkin lymphoma, with numerous subtypes characterized by distinct clinical, pathological, and genetic features. The following is a comprehensive overview of various types of lymphomas, including their clinical presentations, diagnostic approaches, and treatment modalities, based on recent literature.\n Angioimmunoblastic T-cell lymphoma (AITL) is a rare and aggressive subtype of peripheral T-cell lymphoma. A case report and literature review highlighted the challenge of differentiating AITL from systemic lupus erythematosus (SLE) due to overlapping clinical features. AITL is associated with abnormal immune functions and heterogeneous clinical manifestations, often leading to misdiagnosis or missed diagnosis. Rheumatologists should be aware of the potential mimicry of AITL as SLE to ensure timely and accurate diagnosis, given the poor prognosis associated with AITL (Alternative therapies in health and medicine).\n\n  Neurofibromatosis type 1 (NF1) is an inherited tumor susceptibility syndrome associated with an increased risk of malignancies, including Hodgkin lymphoma. While the association of NF1 with leukemia and non-Hodgkin lymphoma is well-documented, the occurrence of Hodgkin lymphoma in individuals with NF1 is rare. Clinicians should consider the possibility of Hodgkin lymphoma in patients with NF1 presenting with cervical or supraclavicular lymphadenopathy (Turkish archives of pediatrics).\n Mantle cell lymphoma (MCL) is a rare and aggressive subtype of non-Hodgkin's B-cell lymphoma characterized by the translocation t(11;14)(q13;32) and overexpression of CD5 and cyclin D1. A case report and literature review focused on CD10-positive MCL, emphasizing the clinicopathologic features and treatment options. MCL remains a challenging disease to manage due to its aggressive nature and limited treatment options (Pathology oncology research : POR).\n Gray zone lymphoma is a rare malignancy with overlapping features of primary mediastinal B-cell lymphoma and classic Hodgkin lymphoma. A case report and literature review discussed the diagnostic criteria, pathophysiology, histological findings, epidemiology, and treatment modalities of gray zone lymphoma. The review provided insights into the complexities of diagnosing and managing this rare lymphoma subtype (Leukemia research reports).\n\n  Plasmablastic lymphoma (PBL) is a rare and aggressive form of mature B-cell neoplasms, primarily identified in patients infected with human immunodeficiency virus (HIV). However, HIV-negative cases of PBL, particularly involving the maxillary sinus in immunocompetent individuals, are exceedingly rare. A case report highlighted the unusual occurrence of unilateral maxillary sinus PBL in an HIV-negative patient, emphasizing the need for comprehensive diagnostic evaluation and management in such atypical presentations (Ear, nose, & throat journal).\n Primary extranodal non-Hodgkin's lymphomas (EN-NHL) encompass a heterogeneous group of malignancies with diverse tumor site locations, prognostic factors, biology expression, and therapeutic options. A review focused on EN-NHL types involving gland locations, aiming to provide updated insights into the diagnosis, histopathology, treatments, and prognostic implications. The review emphasized the importance of understanding the molecular and genetic characteristics of these diseases for personalized treatment approaches (Critical reviews in oncology/hematology).\n\n Central nervous system (CNS) lymphomas, including anaplastic large cell lymphoma (ALCL), pose diagnostic challenges due to their rarity and diverse clinical presentations. A case report and literature review discussed a rare case of ALK-negative CNS ALCL with dural involvement, highlighting the diagnostic difficulties and the importance of a multidisciplinary approach in the workup and management of such rare diseases. The review emphasized the need for diligent patient follow-up and comprehensive diagnostic evaluation for timely diagnosis and treatment (British journal of neurosurgery). Ossified chronic subdural hematoma (CSH) associated with neoplasms, including large B-cell lymphoma, is a rare entity. A case report and literature review discussed the clinical characteristics, tumorigenic mechanisms, and histopathologic analysis of ossified CSH associated with large B-cell lymphoma. The review highlighted the need for comprehensive evaluation and management of such rare associations to ensure appropriate treatment and favorable outcomes (World neurosurgery). Hepatic lymphoma, both primary and secondary, presents with variable and non-specific imaging manifestations, posing diagnostic challenges. A review focused on the radiological features of hepatic lymphoma, emphasizing the diagnostic clues and the role of different imaging techniques in the accurate characterization of primary and secondary hepatic lymphomas. The review highlighted the importance of multiparametric MRI in the differential diagnosis of hepatic lymphoma and its correlation with histology for accurate diagnosis and management (Journal of cancer research and clinical oncology).\n\n Mantle cell lymphoma (MCL) encompasses diverse histopathologic variants, including blastoid MCL, which is an aggressive subtype with rare involvement of the oral cavity. A case report and literature review discussed a rare case of blastoid MCL affecting the palate, emphasizing the diagnostic challenges and distinct features of aggressive MCL subsets. The review highlighted the need for comprehensive histomorphological evaluation and distinction between different MCL variants for accurate diagnosis and management (Head and neck pathology). Primary penile lymphomas are extremely rare and aggressive neoplasms that can be confused with squamous cell carcinoma, leading to inappropriate treatments. A case report and literature review discussed the clinical presentation, treatment, and outcomes of advanced penile lymphoma, emphasizing the need for accurate diagnosis and appropriate management to achieve favorable responses. The review highlighted the importance of distinguishing penile lymphoma from other penile malignancies for optimal treatment strategies (Journal of cancer research and therapeutics). Burkitt lymphoma is a high-grade B-cell lymphoma that rarely develops as a primary malignancy in the supraglottic larynx, particularly following prior irradiation. A case report and literature review discussed a rare case of radiation-induced Burkitt lymphoma in the supraglottic larynx, emphasizing the diagnostic challenges and management considerations. The review highlighted the importance of maintaining a broad differential diagnosis for malignancies of the larynx, especially in patients with a history of radiation treatment (Journal of medical case reports). Primary lymphoma of the lumbar vertebrae is an exceedingly rare disease with unclear optimal treatment strategies. A case report and literature review discussed a rare case of primary lymphoma of the lumbar vertebrae, emphasizing the clinical features and treatment approach. The review highlighted the need for comprehensive evaluation and personalized treatment plans for such rare and challenging cases (Journal of medical case reports). Phototherapy modalities are frequently used in the treatment of cutaneous T-cell lymphomas, such as mycosis fungoides. A survey and literature review discussed the current practice variation in patch and plaque mycosis fungoides phototherapy treatment, emphasizing the need for consensus recommendations on treatment regimens. The review highlighted the variability and lack of consensus in the duration and frequency of maintenance phototherapy for mycosis fungoides, emphasizing the need for further research to optimize treatment strategies (Journal of the American Academy of Dermatology).\n\n In summary, lymphomas encompass a diverse group of malignancies with distinct clinical, pathological, and genetic features. Accurate diagnosis, comprehensive evaluation, and personalized treatment approaches are essential for optimizing outcomes in patients with various subtypes of lymphomas. Ongoing research and multidisciplinary collaboration are crucial for advancing our understanding of lymphomas and improving patient care."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Lymphomas\n',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontSize: width * 0.038,
                                    fontWeight: FontWeight.bold,
                                    height: height * 0.0016),
                                children: [
                              TextSpan(
                                  text: '\n',
                                  style: TextStyle(fontSize: height * 0.008)),
                              TextSpan(
                                text:
                                    'Lymphomas are cancers that originate in the lymphatic system, which includes the lymph nodes, spleen, thymus gland, and bone marrow​.',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' click twice to read more..',
                                style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: width * 0.028,
                                    decoration: TextDecoration.underline),
                              ),
                            ])),
                      ),
                    ),
                    Container(
                        height: height * 0.136,
                        width: width * 0.3,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Lymphomas.jfif'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),
          ],
        ));
  }
}
