import 'package:cares_app/widgets/information.dart';
import 'package:flutter/material.dart';

class Causes extends StatefulWidget {
  const Causes({super.key});

  @override
  State<Causes> createState() => _CausesState();
}

class _CausesState extends State<Causes> {
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
            Container(
              height: height * 0.27,
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

                  //Main Card

                  Container(
                    height: height * 0.164,
                    width: width * 0.916,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Image(
                      image: AssetImage('assets/cause.jfif'),
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
                        'What are Causes of Cancer ?',
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
                                  path: 'assets/cause.jfif',
                                  heading: 'What are Causes of Cancer ?',
                                  description:
                                      "Cancer is a complex disease with multifactorial causes, including genetic, environmental, and lifestyle factors. Several studies have shed light on the various causes and risk factors associated with cancer.\n One study analyzed the causes of death among cancer patients and found that the risk of noncancer deaths now surpasses that of cancer deaths, particularly for young patients in the year after diagnosis. The study identified specific causes of noncancer deaths, such as heart disease, nonbacterial infections, and Alzheimer's disease, which were found to be particularly high in certain cancer patient populations (Annals of Oncology).\n Another study used Mendelian randomization to investigate the causes and consequences of polycystic ovary syndrome (PCOS). The study suggested that obesity, testosterone levels, fasting insulin, and other factors may play a causal role in PCOS. In turn, PCOS may increase the risk of certain cancers, such as estrogen receptor-positive breast cancer, while having no direct causal effect on type 2 diabetes, coronary heart disease, or stroke (The Journal of Clinical Endocrinology and Metabolism).\n\n Immigrant studies have also provided insights into the causes of cancer, showing that the incidence of cancers changes to the level of the new host country in one or two generations. These findings have been fundamental to understanding the environmental etiology of human cancer (European Journal of Public Health).\n Furthermore, a two-sample Mendelian randomization study revealed causal relationships between the gut microbiota and various cancer types, suggesting that the gut microbiota is causally associated with cancers and may provide new insights for further mechanistic and clinical studies of microbiota-mediated cancer (BMC Medicine).\n Work stress has been investigated as a potential risk factor for cancer, with a meta-analysis of observational studies showing a significant association between work stress and the risk of colorectal, lung, and esophagus cancers. The study emphasized the importance of understanding and studying the potential mechanisms that could help identify employees at higher risk of these cancers (International Journal of Cancer).\n\n The association between marijuana use and cancer development was also examined in a systematic review and meta-analysis. The findings suggested a low-strength evidence of an association between marijuana use and testicular germ cell tumors, while the association with other cancers was inconclusive (JAMA Network Open).\n In addition, infectious pathogens were identified as strong and modifiable causes of cancer, with specific pathogens such as Helicobacter pylori, human papillomavirus, and hepatitis B and C viruses contributing to a significant burden of infection-attributable cancer cases worldwide. The study highlighted the need for resources directed towards cancer prevention programs that target infection, particularly in high-risk populations (The Lancet Global Health).\n Depression has also been investigated in relation to cancer risk, with a two-sample bi-directional Mendelian randomization study suggesting a causative effect of genetically predicted depression on specific types of cancer, particularly breast cancer (BMC Cancer).\n\n Moreover, a population-based study evaluated the causes and risk factors of noncancer death during different follow-up periods after gallbladder cancer diagnosis, revealing that noncancer causes accounted for a significant proportion of deaths during the follow-up period after gallbladder cancer diagnosis (Scientific Reports). Metabolic syndrome has been associated with an increased risk of common cancers, with the association differing between sexes, populations, and definitions of metabolic syndrome (Diabetes Care). Furthermore, a systematic review and meta-analysis of Mendelian randomization studies on cancer risk found limited associations supported by robust evidence for causality, emphasizing the need for more thorough assessment of sensitivity MR analyses and transparent reporting in future research (BMC Medicine).\n\n Overall, these studies have provided valuable insights into the multifaceted causes and risk factors associated with cancer, including genetic, environmental, lifestyle, and microbial factors. Understanding these factors is crucial for developing effective prevention and treatment strategies for cancer."),
                            ),
                          ),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      'Cancer arises from a complex interplay of genetic defects and environmental exposures.',
                                  style: TextStyle(
                                      fontFamily: 'josefin',
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: width * 0.035,
                                      height: height * 0.0016),
                                  children: [
                                TextSpan(
                                  text: ' double click twice to read more....',
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
                                path: 'assets/gm.jfif',
                                heading: 'Genetic Mutations',
                                description:
                                    "Cancer development is a complex process, often involving a combination of genetic and environmental factors. While most cancers are multifactorial, up to 10% of all cancers are related to inherited genetic mutations. Genetic testing plays a crucial role in identifying patients with these mutations, allowing for appropriate preventive care and treatment. For example, in prostate cancer, germline genetic differences are increasingly recognized as contributing to the risk of lethal prostate cancer, highlighting the importance of identifying individuals with high-risk germline mutations for tailored management.\n\n Genetic mutations, such as those in the EGFR, ALK, KRAS, and BRAF genes, are associated with poor prognosis in lung cancer. Machine learning (ML) models based on radiomic features extracted from imaging data have shown promise in detecting genetic mutation status in non-small cell lung cancer (NSCLC) patients, particularly for EGFR mutation status. These models demonstrate relatively high accuracy, especially when combined with clinical features. However, the influence of clinical variables cannot be overlooked in this process, and future studies should also focus on the accuracy of radiomics in identifying mutation status of other genes in EGFR.\n In bladder cancer, genetic mutations in chromosomal genes such as FGFR3, RB1, HRAS, TP53, TSC1, and others play a significant role in tumor formation. For instance, the p53 gene mutation has been identified in bladder cancer patients, and the TERT gene has been implicated in 70% of bladder cancers. Additionally, recent findings have shown that BAP1 mutations contribute to BRCA pathway alterations in bladder cancer, highlighting the need for further research on gene mutations and new biomarkers in bladder cancer.\n Breast cancer, the most common cancer in women worldwide, is associated with various risk factors, including genetic, environmental, and lifestyle factors. Less than 10% of breast cancers can be attributed to an inherited genetic mutation, with the majority being associated with environmental, reproductive, and lifestyle factors. Women carrying a BReast CAncer (BRC) genetic mutation face emotional decision-making regarding risk management strategies to prevent cancer, such as risk-reducing bilateral mastectomy and bilateral salpingo-oophorectomy. Synchronous cancers, such as breast and pancreatic cancers, present unique challenges in treatment, and there is a significant paucity of literature regarding their management. Neoadjuvant management of synchronous breast and pancreatic cancers, without a germline mutation, requires individualized treatment strategies based on the specific characteristics of each cancer type. Epigenetic alterations, including aberrant DNA methylation and histone modification, have been found to play a key role in cervical cancer development and metastasis. These epigenetic changes have potential as biomarkers for disease progression and targeted therapy, highlighting the importance of understanding the role of epigenetics in cervical cancer research.\n\n In colorectal cancer, most cases are sporadic, with approximately 5% attributed to inherited genetic mutations, such as Lynch syndrome and familial adenomatous polyposis. The transition from normal colon epithelium to invasive cancer involves the accumulation of genetic mutations, adenoma formation, and subsequent carcinogenesis, following the adenoma-carcinoma sequence. SOX4, a gene implicated in tumorigenesis and cancer progression, has been found to be upregulated in various tumor types and associated with unfavorable prognoses, genetic mutations, and DNA methylation levels. In liver hepatocellular carcinoma (LIHC), SOX4 expression is linked to immune cell infiltration, macrophage polarization, immune subtype, and molecular subtype, highlighting its potential as a therapeutic target for tumor treatment. Overall, genetic mutations play a significant role in the development and progression of various cancers, and understanding their impact is crucial for personalized cancer management and targeted therapies. Further research is needed to elucidate the molecular mechanisms underlying genetic mutations and their potential as therapeutic targets."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Genetic Mutations\n',
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
                                    'Changes in the genetic code of cells can cause them to grow and divide uncontrollably, leading to cancer. ',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' double click twice to read more....',
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
                            const Image(image: AssetImage('assets/gm.jfif'))),
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
                                path: 'assets/carci.jfif',
                                heading: 'Carcinogens',
                                description:
                                    "Carcinogens are substances or exposures that can lead to cancer by causing genetic mutations or promoting other mechanisms that increase cancer risk. The development of cancer is a multifaceted process involving both genetic predispositions and environmental influences. Carcinogens can be chemical, physical, or biological agents, and their effects can vary depending on the type of exposure and the individual's susceptibility.\n\n Types of Carcinogens Chemical Carcinogens:\n Tobacco Smoke:\n Contains numerous carcinogenic chemicals, including polycyclic aromatic hydrocarbons (PAHs), nitrosamines, and formaldehyde. Tobacco smoke is strongly linked to lung cancer, as well as cancers of the mouth, throat, esophagus, pancreas, bladder, and kidney. Asbestos: Fibrous minerals that, when inhaled, can cause lung cancer, mesothelioma, and other cancers. Asbestos exposure occurs in occupational settings, particularly in construction and manufacturing. Benzene: An industrial chemical found in emissions from coal and petroleum processing, as well as in tobacco smoke. Benzene exposure is linked to leukemia and other blood cancers.\n\n Formaldehyde:\n Used in building materials and various household products. It is associated with nasopharyngeal cancer and leukemia.\n\n Aflatoxins:\n Toxins produced by certain molds found on agricultural crops like peanuts and corn. Aflatoxins are potent liver carcinogens.\n\n Physical Carcinogens:\n Ultraviolet (UV) Radiation: From sunlight and tanning beds. UV radiation is the primary cause of skin cancers, including melanoma, basal cell carcinoma, and squamous cell carcinoma.\n\n Ionizing Radiation:\n  Includes X-rays, gamma rays, and radioactive materials. Ionizing radiation can cause various cancers, particularly leukemias and thyroid cancer. Radon: A naturally occurring radioactive gas that can accumulate in buildings. Radon exposure is a significant risk factor for lung cancer.\n\n Biological Carcinogens:\n  Human Papillomavirus (HPV):\n  A group of viruses linked to cervical, anal, and oropharyngeal cancers. HPV is a common sexually transmitted infection, and certain strains are particularly carcinogenic.\n\n Hepatitis B and C Viruses:\n Chronic infections with these viruses can lead to liver cancer. They are primarily transmitted through blood and bodily fluids. Helicobacter pylori: A bacterium that causes chronic stomach infections and is associated with gastric cancer and lymphoma. Mechanisms of Carcinogenesis Carcinogens can cause cancer through several mechanisms, including:\n\n Genetic Mutations:\n Carcinogens can directly damage DNA, leading to mutations. For instance, tobacco smoke and UV radiation cause DNA damage that can result in mutations driving cancer development. Epigenetic Changes: Carcinogens can alter the regulation of gene expression without changing the DNA sequence. These changes can disrupt normal cell growth and differentiation.\n\n Oxidative Stress:\n Many carcinogens generate reactive oxygen species (ROS), which can damage cellular components, including DNA, proteins, and lipids.\n\n Chronic Inflammation:\n Persistent exposure to certain carcinogens can cause chronic inflammation, creating an environment conducive to cancer development. Carcinogen Classification Organizations such as the International Agency for Research on Cancer (IARC) classify carcinogens based on evidence of their carcinogenicity in humans and animals:\n\n Group 1:\n Carcinogenic to humans (e.g., tobacco smoke, asbestos, benzene, UV radiation, HPV).\n\n Group 2A:\n Probably carcinogenic to humans (e.g., diesel engine exhaust, glyphosate).\n Group 2B:\n Possibly carcinogenic to humans (e.g., chloroform, lead).\n\n Group 3:\n Not classifiable as to its carcinogenicity to humans (e.g., caffeine).\n\n Group 4:\n Probably not carcinogenic to humans. Prevention and Risk Reduction Reducing exposure to known carcinogens is crucial for cancer prevention:\n\n Avoid Tobacco:\n  Quitting smoking and avoiding secondhand smoke can significantly reduce cancer risk.\n\n Limit Alcohol Consumption:\n Excessive alcohol intake is linked to several cancers, including liver, breast, and colorectal cancer.\n\n Protect Against UV Radiation:\n Using sunscreen, wearing protective clothing, and avoiding tanning beds can prevent skin cancer.\n\n Vaccination:\n Vaccines against HPV and Hepatitis B can prevent infections that lead to cancer. Occupational Safety: Implementing safety measures in workplaces to reduce exposure to carcinogens like asbestos, benzene, and formaldehyde. Healthy Diet and Lifestyle: Consuming a diet rich in fruits, vegetables, and whole grains, maintaining a healthy weight, and engaging in regular physical activity can lower cancer risk. Research and Future Directions Ongoing research aims to identify new carcinogens, understand their mechanisms, and develop strategies to mitigate their effects. Advances in genetic and molecular biology are helping to elucidate how specific carcinogens cause cancer, paving the way for targeted prevention and treatment strategies.\n\n Additionally, regulatory policies and public health initiatives play a critical role in reducing exposure to carcinogens and preventing cancer on a population level. Understanding the complex interplay between genetic susceptibility and environmental exposures is essential for comprehensive cancer prevention and control. By integrating knowledge fromvarious scientific disciplines, we can develop more effective strategies to reduce the burden of cancer globally."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Carcinogens\n',
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
                                    'Carcinogens are substances or agents that can damage DNA and increase the risk of cancer.',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' double click twice to read more....',
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
                            image: AssetImage('assets/carci.jfif'))),
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
                                path: 'assets/chronic.jfif',
                                heading: 'Chronic Inflammation',
                                description:
                                    "Chronic inflammation is a complex and multifaceted process that has been implicated in a wide range of diseases, including metabolic disorders, cancer, neurodegenerative diseases, and age-related conditions. The role of chronic inflammation in these diseases is well-documented and has been the subject of extensive research across various scientific disciplines.\n\n In the context of metabolic diseases, such as type 2 diabetes (T2D) and insulin resistance, chronic, low-grade inflammation has been identified as a key contributor. Macrophages play a significant role in this process, with obesity-induced chronic inflammation leading to insulin resistance. Molecular mechanisms underlying macrophages, low-grade tissue inflammation, insulin resistance, and T2D have been extensively studied, and therapeutic drugs targeting macrophages for the treatment of T2D have been explored (Cells, Journal of physiology and pharmacology).\n\n  Oxidative stress and inflammatory markers have been linked to prediabetes and diabetes, with hyperglycemia contributing to chronic inflammation and increased reactive oxygen species (ROS) generation. Conversely, increased oxidative stress and inflammation can lead to insulin resistance and impaired insulin secretion. Understanding the mechanisms involved in the progression from prediabetes to diabetes is crucial for delaying the onset of diabetes and preventing cardiovascular complications (Journal of physiology and pharmacology).\n\n In the context of cancer, chronic inflammation has been closely associated with the initiation, progression, and spread of cancer. Proinflammatory cytokines and transcription factors play pivotal roles in this process, and targeting chronic inflammation has been identified as a potential strategy for cancer prevention and treatment. Agents such as aspirin, metformin, statins, and natural products have shown promise in targeting chronic inflammation for cancer prevention and treatment (Science China. Life sciences).\n\n The role of chronic inflammation in skin carcinogenesis has also been extensively studied, particularly in the context of ultraviolet radiation-induced skin cancers. Chronic inflammation has been identified as a hallmark of microenvironmental-agent-mediated skin cancers, and understanding the molecular pathways activating tumorigenesis by inflammation is crucial for clinical practice and scientific research. The identification of early mechanisms involved in carcinogenesis and the inflammatory environment as complex molecular networks triggering tumorigenesis are important for the development of advanced skin cancer therapies (Life).\n\n In the context of age-related conditions, chronic inflammation, often referred to as 'inflammaging' has been recognized as a key contributor to increased morbidity and mortality in the aging population. The crosstalk between chronic inflammation and other hallmarks of aging results in a vicious cycle that exacerbates the decline in cellular functions and promotes aging. Understanding this complex interplay provides new insights into the mechanisms of aging and the development of potential anti-aging interventions (Molecular metabolism).\n\n Chronic inflammation has also been implicated in the pathophysiology of various conditions, including chronic pelvic pain syndrome, polycystic ovary syndrome (PCOS), digestive cancers, and chronic dialysis patients. In each of these contexts, the immunological and molecular mechanisms underlying chronic inflammation have been extensively studied, providing insights into the role of chronic inflammation in these conditions and potential therapeutic targets (Frontiers in immunology, Iranian journal of basic medical sciences, International journal of molecular sciences, Seminars in dialysis).\n\n The impact of chronic inflammation on cancer etiology has been extensively studied, with strong and consistent evidence linking physical activity, sedentary behavior, and obesity to cancer risk. The biologic mechanisms underlying these associations include effects on endogenous sex steroids, metabolic hormones, insulin sensitivity, and chronic inflammation. Understanding these mechanisms is crucial for developing strategies for cancer prevention and treatment (Molecular oncology).\n\n In the context of age-related hearing loss, chronic, low-grade inflammation, or 'inflammaging,' has been identified as a crucial contributor. Although research on the potential role of inflammation in age-related hearing loss is limited, understanding the mechanisms of inflammation in the cochlea and the natural changes acquired with aging may provide a better understanding of how this process can accelerate presbycusis. Animal model experimentation and pre-clinical studies designed to recognize and characterize cochlear inflammatory mechanisms may suggest novel treatment strategies for preventing or treating age-related hearing loss (Ageing research reviews).\n\n In summary, chronic inflammation is a complex and multifaceted process that plays a significant role in a wide range of diseases and conditions. Understanding the molecular and immunological mechanisms underlying chronic inflammation is crucial for the development of targeted therapeutic strategies for the prevention and treatment of these diseases."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Chronic Inflammation\n',
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
                                    'Long-term inflammation in the body can damage cells and contribute to cancer development.',
                                style: TextStyle(
                                    fontFamily: 'josefin',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: width * 0.035,
                                    height: height * 0.0016),
                              ),
                              TextSpan(
                                text: ' double click twice to read more....',
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
                            image: AssetImage('assets/chronic.jfif'))),
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
                                path: 'assets/virus.jfif',
                                heading: 'Certain Viruses and Bacteria',
                                description:
                                    "Certain viruses and bacteria have been associated with the development of cancer through various mechanisms. These microorganisms have evolved strategies to disrupt pathways involved in maintaining genetic integrity, preventing apoptosis of damaged cells, and promoting unwanted cellular proliferation. This ultimately impairs the host's ability to repair damage, leading to cellular transformation, cancer progression, and reduced response to therapy (PubMed). For instance, mycoplasmas and certain other bacteria with closely related DnaKs may contribute to cellular transformation and hinder the efficacy of anti-cancer drugs that rely on functional p53 (PubMed).\n\n In allergic airway diseases, the microbiome of allergic individuals differs from that of healthy subjects, showing a close relationship with the type 2 response in allergic airway disease. Multiple distinct viruses and bacteria have been detected in the airways of individuals with allergic airway diseases, and these microorganisms play a role in propagating type 2 responses (PubMed). Furthermore, parasite infections, including protozoa and helminths, can inhibit inflammatory responses and impact disease outcomes caused by viral, bacterial, or other parasitic infections. Type I interferon (IFN-I) responses induced by co-infections with different pathogens may vary according to the host genetic background, immune status, and pathogen burden (Frontiers in Immunology).\n\n In the context of inflammatory bowel diseases (IBD), alterations in the profiles and functions of gut bacteria, fungi, and viruses under conditions of dysbiosis contribute to inflammation and effector immune responses that mediate IBD in humans and enterocolitis in mice. Strategies to engineer the intestinal environment by modifying the microbiota community structure or function, such as fecal microbial transplantation, are being explored for personalized approaches to treatment (Gastroenterology).\n\n The interaction of enteric eukaryotic viruses with members of the host microbiota impacts the outcome of infection. For example, poliovirus capsid stability and receptor engagement are positively impacted by bacteria and bacterial lipopolysaccharides. Norovirus utilizes histo-blood group antigens produced by enteric bacteria to attach and infect B cells. Reovirus binds Gram-negative and Gram-positive bacteria through bacterial envelope components to enhance virion thermostability (Viruses).\n\n Therapeutic bacteria and viruses have become a dual-faceted instrument in cancer therapy, providing a promising avenue for treatment but also creating significant obstacles and complications that contribute to cancer growth and development. Understanding the precise molecular mechanisms of these interactions is important for cancer prevention and the development of new anti-cancer drugs (Cell Communication and Signaling).\n\n In the medical field, the detection and control of pathogenic bacteria, fungi, and viruses are crucial for public health. Aggregation-induced emission (AIE) luminogens have shown promise for the detection and treatment of these pathogens. AIEgens are promising fluorescent probes for the detection of bacteria, fungi, and viruses with excellent sensitivity and photostability. Moreover, AIEgen-based theranostic platforms can be fabricated for the detection and treatment of these pathogens (Advanced Healthcare Materials).\n\n Silica-based nanosystems with unique physicochemical properties have been explored for targeted drug delivery against antibiotic-resistant bacteria and pathogenic viruses. These nanosystems can be loaded with antiviral and antimicrobial drugs or molecules through their internal porous structures or surface linkers, offering great opportunities for controlling and treating various infections (Critical Reviews in Microbiology).\n\n Polyoxometalates (PMs) have been investigated for their antitumoral, antiviral, and antibacterial activities. Several PMs have shown potential for the chemotherapy of solid tumors, DNA and RNA viruses, and drug-resistant bacteria. These findings offer insights into the development of novel inorganic medicines with biologically excellent activity (Progress in Molecular and Subcellular Biology).\n\n In summary, the interactions between certain viruses and bacteria with the host microbiota and immune system play a significant role in cancer development, allergic diseases, inflammatory bowel diseases, and infectious diseases. Understanding these interactions at the molecular level is crucial for developing targeted therapies and interventions."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Certain Viruses and Bacteria\n',
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
                                    'Some viruses and bacteria can cause cancer by altering the genes of infected cells.',
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
                            image: AssetImage('assets/virus.jfif'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),
          ],
        ));
  }
}
