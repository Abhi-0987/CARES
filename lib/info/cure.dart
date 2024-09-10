import 'package:cares_app/widgets/information.dart';
import 'package:flutter/material.dart';

class Cure extends StatefulWidget {
  const Cure({super.key});

  @override
  State<Cure> createState() => _CureState();
}

class _CureState extends State<Cure> {
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
            SizedBox(
              height: height * 0.01,
            ),

            //Main Card

            Container(
              height: height * 0.3,
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
                    height: height * 0.164,
                    width: width * 0.916,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Image(
                      image: AssetImage('assets/cure.jfif'),
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
                        'Cure of Cancer',
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
                                  path: 'assets/cure.jfif',
                                  heading: 'Cure of Cancer',
                                  description:
                                      "The field of cancer research has seen significant advancements in recent years, with a focus on personalized treatments, tumor heterogeneity, and the tumor microenvironment. Neoantigen-based cancer vaccines have emerged as a promising immunotherapeutic approach to treat cancer, with a focus on identifying, validating, formulating, and targeting neoantigens to overcome tumor heterogeneity (Cancer Research). However, the complexities of tumor heterogeneity pose a significant hurdle for developing effective vaccines targeting therapeutically relevant neoantigens (Cancer Research).\n\n The activation of p53, a potent tumor suppressor, has been found to paradoxically lead to liver cancer development, highlighting the complexity and non-cell autonomous nature of the physiologic p53 response (Cancer Research). Additionally, the tumor microenvironment has been shown to play a crucial role in cancer progression, with studies revealing the contribution of cancer-associated adipocytes and the immunosuppressive microenvironment in ovarian cancer (Cancer Research).\n\n Advances in single-cell sequencing have enabled the comprehensive analysis of cancer-cell genome, transcriptome, and epigenome, leading to the discovery of high heterogeneity and stochastic changes in cancer-cell populations, new driver mutations, and complicated clonal evolution mechanisms (Cancer Research). Furthermore, spatial transcriptomics has allowed for the identification of predictive markers and therapeutic targets for long-term survivors of advanced high-grade serous ovarian cancer (Cancer Research).\n\n The projected cancer burden in the United States highlights the unexpected rise in thyroid, liver, and pancreas cancers, emphasizing the need for concerted efforts in research and healthcare to effect substantial changes for the future (Cancer Research). Additionally, the success in managing testicular cancer has underscored the importance of survivorship research and the need for further therapeutic options for patients who do not respond to standard treatment regimens (Cancer Research).\n\n Collaborations between scientists and advocates in cancer research have been emphasized for ensuring patient-centered and relevant scientific and medical advances, with a focus on establishing successful relationships, training opportunities for advocates, and strengthening communication between scientists and advocates (Cancer Research).\n\n In conclusion, the recent advancements in cancer research have shed light on the complexities of tumor heterogeneity, the tumor microenvironment, and the potential of personalized treatments. These findings have the potential to revolutionize cancer treatment and improve patient outcomes, highlighting the need for continued research and collaborative efforts in the field."),
                            ),
                          ),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      "While there's no single 'cure' for cancer, advancements in treatment like surgery, radiation, and targeted therapies aim for remission and extended lifespans.",
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
                                path: 'assets/pm.jfif',
                                heading: 'Precision Medicine',
                                description:
                                    "Precision medicine in cancer treatment has emerged as a promising approach to improve patient care and outcomes. The integration of various technologies and methodologies has significantly advanced the field of precision medicine in oncology. Cancer organoid co-culture models have been established as ex vivo miniatures of tumors, faithfully recapitulating their structure, genetic signatures, and distinctive cancer features. These models have been rapidly applied in drug testing, genome editing, and transplantation, with the potential to guide personalized therapy (Frontiers in Immunology). However, the lack of a tumor microenvironment in these models is a major limitation, and co-culture models involving immune cells and fibroblasts are being explored to investigate the tumor microenvironment and molecular interactions in cancer treatment (Frontiers in Immunology).\n\n Radiomics and artificial intelligence (AI) have been harnessed for precision medicine in lung cancer treatment. Radiomic features captured on medical imaging can be used in an AI paradigm to risk stratify patients, predict histological and molecular findings, and facilitate precision medicine for improving patient care (Seminars in Cancer Biology). Furthermore, AI, particularly deep learning, has been applied in various aspects of oncology research, including early cancer detection, diagnosis, classification, molecular characterization of tumors, prediction of patient outcomes and treatment responses, personalized treatment, and drug discovery (Cancer Communications).\n\n The integration of cancer biomarkers into oncology has revolutionized cancer treatment, enabling oncologists to tailor treatments based on the unique molecular profile of each patient's tumor. This has led to remarkable advancements in cancer therapeutics and patient prognosis (Cell). Additionally, theranostics, particularly nanobody derivatives, have gained interest in precision oncology, enabling patient selection, treatment, and monitoring through labeled compounds and imaging technology (Theranostics).\n\n The emergence of precision medicine has shifted the focus from an organ-centric paradigm guiding therapy to complete molecular investigations. This has led to the development of novel therapeutic techniques, including gene therapy, stem cell therapy, natural antioxidants, targeted therapy, photodynamic therapy, nanoparticles, and precision medicine, to diagnose and treat cancer (Molecular Biology Reports). The heterogeneity of liver cancer has presented challenges in achieving personalized therapy, and the complex mechanisms and phenotypes of liver cancer heterogeneity are being explored to execute precision medicine in a personalized manner (Cancer Letters).\n\n Multi-omics analysis has paved the path toward achieving precision medicine in cancer treatment and immuno-oncology. The integration of multiple biological layers of omics studies has offered new therapeutic opportunities for precision medicine, leading to the identification of prognostic and treatment-specific biomarkers and personalized therapy (Frontiers in Molecular Biosciences). Furthermore, long non-coding RNAs (lncRNAs) have shown clinical potential as biomarkers in liquid biopsies for the diagnosis, prognosis, and responses to drugs in gastric cancer, contributing to precision medicine (Molecular Cancer).\n\n The field of personalized medicine has played an increasingly important role in cancer prevention, diagnosis, prognosis, and therapeutics. The identification of cancer predisposition genes and molecularly targeted therapies has led to individualized, molecularly targeted therapies with increased efficacy and reduced toxicity (International Journal of Cancer). Precision medicine for pancreas cancer treatment has been recognized as a multidisciplinary challenge and opportunity (Clinical Gastroenterology and Hepatology).\n\n The development of small molecule inhibitors has significantly impacted targeted therapy in oncology, with multitargeted and highly selective kinase inhibitors being used for the treatment of advanced treatment-resistant cancers. Lessons learned from the development of these agents have accelerated the development of next-generation inhibitors to optimize the therapeutic index and establish combination therapies, contributing to precision medicine (Lancet).\n\n In summary, precision medicine in cancer treatment has been advanced through the integration of various technologies, including cancer organoid co-culture models, radiomics, AI, cancer biomarkers, theranostics, multi-omics analysis, and small molecule inhibitors. These advancements have paved the way for personalized therapy, improved patient care, and better outcomes in oncology."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Precision Medicine\n',
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
                                    "Tailoring treatments to the specific genetic makeup of a patient's cancer, allowing for more targeted and effective therapies with fewer side effects.",
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
                        child:
                            const Image(image: AssetImage('assets/pm.jfif'))),
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
                height: height * 0.155,
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
                                path: 'assets/immune.jfif',
                                heading: 'Immunotherapy',
                                description:
                                    "Immunotherapy has emerged as a promising frontier in the treatment of esophageal cancer, a challenging malignancy often diagnosed in advanced stages with poor prognosis. Recent advancements in treatment for resectable and unresectable esophageal cancer include immunotherapy, targeted therapy, sentinel lymph node mapping, radiogenomics, palliative measures, and screening measures (JAAPA : official journal of the American Academy of Physician Assistants). \n\n The identification and therapeutic targeting of patient-specific mutated peptide antigens represent an exciting frontier of personalized medicine in cancer treatment. Advances in whole exome/genome sequencing and bioinformatic detection of tumor-specific genetic variations have revealed that T cell mediated anti-tumor immunity is substantially directed at mutated peptide sequences. The range of therapeutic modalities targeting neoantigens, including adoptive T cell transfer, checkpoint blockade, and neoantigen vaccination, have demonstrated preclinical and clinical anti-tumor efficacy (Cancers).\n\n Combining tumor immunotherapy with nanoparticle-based hyperthermia has shown promise in cancer treatment. Tumor immunotherapy harnesses the immune system to recognize and attack cancer cells, while nanoparticle-based hyperthermia utilizes nanotechnology to promote selective cell death by raising the temperature of tumor cells. Integration of these two treatment strategies may amplify anti-tumor responses, leading to improved outcomes and reduced side effects (Frontiers in immunology).\n\n Immunotherapies are increasingly being investigated as alternative therapies for infectious diseases, resulting in significant advances towards the uncovering of pathogen-host immunity interactions. Novel and innovative therapeutic strategies, such as monoclonal antibodies (mAbs), vaccines, T-cell-based therapies, manipulation of cytokine levels, and checkpoint inhibition, show promise in combating infectious diseases. The success of immunotherapeutic strategies in the broader field of disease control reinforces their role beyond cancer treatment (Immunotherapy advances).\n\n Furthermore, supramolecular approaches using non-covalent interactions have attracted attention in the development of photodynamic therapy (PDT) for cancers. Combining PDT with other treatment methods, such as photothermal therapy, chemotherapy, and immunotherapy, using supramolecular systems can effectively address the shortcomings of PDT while maximizing the benefits of each treatment regimen (Chemical science)."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Immunotherapy\n',
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
                                    "Harnessing the body's own immune system to fight cancer cells by stimulating T-cells or using immune checkpoint inhibitors.",
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
                            image: AssetImage('assets/immune.jfif'))),
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
                                path: 'assets/gt.jfif',
                                heading: 'Gene Therapy',
                                description:
                                    "Gene therapy has emerged as a promising approach for cancer treatment, offering potential improvements in survival rates and reduced side effects compared to traditional therapies. The use of gene therapy in cancer involves introducing therapeutic genes into cancer cells to induce cell death or slow down cancer growth. Various strategies have been explored, including therapeutic gene activation, gene silencing, oncolytic virotherapy, and anti-tumor angiogenesis. These strategies aim to inhibit oncogene activation, activate tumor suppressor genes, stimulate the immune system, and target tumor angiogenesis.\n\n Viral vectors, such as adenovirus-based vectors, have been extensively utilized in cancer gene therapy. They have been employed to express anti-tumor, toxic, suicide, and immunostimulatory genes, as well as for vaccine development against infectious diseases and various cancers. Clinical trials have confirmed the safety, tolerability, and therapeutic efficacy of viral-based gene therapy for cancer and other diseases. In addition to viral vectors, nonviral delivery systems, such as cationic liposomes and bacteriophages, have been investigated for their potential in cancer gene therapy. These delivery systems offer advantages such as excellent biodegradability, biocompatibility, and high nucleic acid encapsulation efficiency.\n\n Nanocarriers, including liposomes, have been explored for the delivery of nucleic acid-based drugs in cancer treatment, with the potential to enhance targeting and reduce side effects. Combining gene therapy with other therapeutic strategies, such as phototherapy and magnetic hyperthermia therapy, has been proposed to achieve synergistic therapeutic effects through different mechanisms. Furthermore, the development of oncolytic virus therapies, including oncolytic adenoviruses, herpes viruses, parvoviruses, and reoviruses, has shown promise in preclinical and clinical settings.\n\n Research has also focused on the use of gene therapy in the treatment of pancreatic cancer, which is known for its high mortality rate and lack of effective treatments. Studies funded by the NIH have investigated the use of cancer-specific cytotoxic gene therapy for human pancreatic cancer, with a focus on targeting the rat insulin promoter to activate suicide genes specifically within pancreatic cancer cells. This approach has shown promise in preclinical models, such as SCID mice, and aims to selectively ablate pancreatic cancer cells using a combination of gene delivery systems and subsequent treatment with ganciclovir.\n\n The specific aims of these studies have included investigating the regulation of the rat insulin promoter in human pancreatic cancer cell lines, as well as determining the cytotoxic effects of the gene therapy in vitro and in vivo. Additionally, the research has explored the potential impact of the therapy on isolated mouse and human islets, with the ultimate goal of developing a more effective treatment for patients with pancreatic cancer. The proposed strategy involves combining surgery to resect the primary cancer with systemic pancreatic cancer-specific gene therapy to target micrometastases.\n\n Despite the progress in gene therapy for cancer, specific challenges and barriers, such as the need for improved delivery systems and addressing the complexity of cancer biology, remain to be addressed. However, with continuous breakthroughs in techniques and methodologies, gene therapy is expected to play a significant role in the future of cancer treatment, potentially as a new medical procedure that can make cancer a controllable disease. The combination of gene therapy with other therapeutic strategies and imaging agents in nanotheranostic platforms offers new opportunities for personalized and effective cancer treatment. These studies represent important advancements in the field of gene therapy for cancer and provide valuable insights into the potential mechanisms and efficacy of this approach. The findings from these investigations contribute to the ongoing efforts to develop novel and targeted treatments for pancreatic cancer, addressing the urgent need for more effective therapeutic options for this devastating disease."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Gene Therapy\n',
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
                                    'Correcting or replacing faulty genes that contribute to cancer development, potentially offering a permanent cure.',
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
                            image: AssetImage('assets/gt.jfif'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),

            //Sub-Card 4

            SizedBox(
              height: height * 0.01,
            ),
            Container(
                height: height * 0.155,
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
                                path: 'assets/nano.jfif',
                                heading: 'Nanomedicine',
                                description:
                                    "Nanomedicine, the application of nanotechnology in medicine, has emerged as a promising approach for cancer treatment. The integration of nanomedicine with various therapeutic modalities, including immunotherapy, phototherapy, chemotherapy, and targeted drug delivery, has shown potential in addressing the challenges of conventional cancer treatments. The combination of cancer immunotherapy and nanomedicine has gained traction, with the potential to activate the immune system to fight tumors and prevent relapse. This approach has led to a renaissance of cancer nanomedicine, offering opportunities for improved cancer therapy.\n\n Phototheranostic nanomedicine, which involves the use of non-toxic phototherapeutic agents activated by light irradiation, has shown promise in cancer therapy. The development of nanotechnology has facilitated the refinement of phototheranostic nanomedicine, particularly in synergizing with cancer immunotherapy. Additionally, nanomedicine has demonstrated significant progress in enhancing cancer chemotherapy. Strategies such as increased drug enrichment in tumor tissues, subcellular organelle-targeted chemotherapy, and combinational approaches to reverse multidrug resistance have shown potential in improving the efficacy of cancer chemotherapy.\n\n The challenges and opportunities in cancer nanomedicine are being actively explored. The complexities and heterogeneity of tumor biology, as well as the understanding of nano-bio interactions, present obstacles to clinical translation and commercialization. However, novel engineering approaches are being developed to capitalize on the growing understanding of tumor biology and nano-bio interactions to develop more effective nanotherapeutics for cancer patients.\n\n Nanomedicine-based delivery strategies, including passive, active, and ultrasound-triggered drug delivery, have been investigated for their potential in cancer treatment. Nanocarriers, such as micelles and liposomes, have shown promise in producing multimodal delivery systems for targeted cancer therapy. These strategies aim to capitalize on the leaky nature of tumor tissue, receptor-mediated endocytosis, and external and internal stimuli to release therapeutic agents at the tumor site.\n\n Furthermore, the use of nanomedicine in breast cancer treatment has been explored as a promising alternative to conventional therapies. Nanomedicine-based therapeutic interventions have the potential to improve treatment effectiveness and reduce undesired side effects in breast cancer patients.\n\n The potential of nanomedicine in cancer therapy extends to the use of nanomaterials, such as graphene oxide, for targeted drug delivery and cancer treatment. Functionalized graphene oxide and GO-metal nanoparticle composites have been investigated for their applications in nanomedicine, particularly in anticancer drug delivery.\n\n Extracellular vesicles, membrane-bound vesicles released by cells to mediate intercellular communication, have emerged as a novel tool in nanomedicine for cancer treatment. Alterations in the extracellular vesicle milieu have been studied to follow disease progression, reveal targets for therapy, and serve as mediators of therapy. Additionally, extracellular vesicles have been explored for their potential as a therapeutic agent to target cancer cells and cancer-associated stroma.\n\n  The development of theranostic nanomedicine, which combines therapeutics and imaging, has shown promise in managing deadly cancers. This approach aims to deliver the right drug to the right patient at the right moment, offering potential medical applications for cancer treatment.\n\n In summary, nanomedicine has shown significant progress and potential in revolutionizing cancer treatment. The integration of nanotechnology with various therapeutic approaches offers opportunities for improved efficacy, reduced side effects, and targeted delivery in cancer therapy. Despite the challenges, ongoing research and advancements in nanomedicine hold promise for addressing the complexities of cancer treatment and improving patient outcomes."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Nanomedicine\n',
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
                                    'Utilizing nanoparticles to deliver drugs directly to cancer cells, improving treatment efficacy and reducing damage to healthy tissues.',
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
                            image: AssetImage('assets/nano.jfif'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),
          ],
        ));
  }
}
