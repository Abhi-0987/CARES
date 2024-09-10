import 'package:cares_app/widgets/information.dart';
import 'package:flutter/material.dart';

class Prevention extends StatefulWidget {
  const Prevention({super.key});

  @override
  State<Prevention> createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
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
              height: height * 0.29,
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
                      image: AssetImage('assets/prev.jfif'),
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
                        'Prevention of Cancer',
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
                                  path: 'assets/prev.jfif',
                                  heading: 'Prevention of Cancer',
                                  description:
                                      "Cancer prevention strategies encompass a wide range of approaches, from dietary interventions to genetic predisposition awareness. The use of 5-alpha reductase inhibitors (5-ARIs) for prostate cancer prevention has been a topic of controversy. While these inhibitors have shown success in reducing insignificant prostate cancer, concerns about their potential to increase the risk of higher-grade prostate cancer have led to their lack of approval for prevention (Current Opinion in Urology). Carbohydrate intake has also been linked to cancer risk, with complex carbohydrates inversely associated with the risk of several cancer types, while data on simple carbohydrates are mixed (Current Nutrition Reports).\n\n Malnutrition is a common and under-recognized condition in older adults with cancer, and it is associated with poor overall survival and quality of life. Assessment tools such as the Mini Nutrition Assessment (MNA) and Malnutrition Universal Screening Tool (MUST) are commonly used to identify malnutrition, and comprehensive prevention strategies are crucial for improving the nutrition status of older adults with cancer (Current Oncology Reports). Additionally, the consumption of flaxseed and its bioactive components has been associated with a decreased risk of colorectal cancer, with experimental data suggesting potential mechanisms for this protective effect (Current Oncology Reports).\n\n In China, lung cancer presents a significant public health issue, with distinct gene profiles associated with the disease. Targeted therapy and immunotherapy have shown promising progress in treatment, but more preventive strategies tailored to the characteristics of lung cancer in China are needed (Current Opinion in Oncology). Furthermore, individuals with schizophrenia have been found to have a higher cancer mortality rate, attributed to various factors such as nonadherence to treatment and diagnostic overshadowing. Effective collaboration between mental health and cancer care specialists is crucial for addressing this issue (Current Opinion in Supportive and Palliative Care).\n\n The epidemiology of nasopharyngeal carcinoma (NPC) has been a subject of fascination due to its unique geographic distribution and association with the Epstein-Barr virus. Recent findings have provided new insights into the epidemiology of NPC, shedding light on factors such as genetic variation, passive smoking, and oral health (Cancer Epidemiology, Biomarkers & Prevention). RNA biology has revolutionized cancer understanding and treatment, particularly in endocrine-related malignancies, with RNA playing a crucial role in cancer progression and influencing tumor heterogeneity and behavior (Frontiers in Endocrinology).\n\n Cardiorespiratory fitness (CRF) has been shown to play a significant role in reducing cardiovascular and all-cause mortality, as well as in cancer prevention. Higher CRF is associated with improved survival and decreased incidence of cardiovascular diseases and other comorbidities (Current Atherosclerosis Reports). Lifestyle factors such as smoking, obesity, and hypertension have been identified as modifiable risk factors for kidney cancer, highlighting the importance of maintaining a healthy weight and avoiding smoking for prevention (Current Opinion in Urology).\n\n Plant-based diets have been recommended for cancer prevention, and emerging evidence suggests that higher intake of plant-based foods is associated with improved prognosis in cancer survivors (Current Nutrition Reports). The role of dietary interventions in prostate cancer has been further elucidated, with data supporting the association between insulin resistance and prostate cancer. Dietary strategies targeting metabolic syndrome, diabetes, and obesity are being explored for their potential in prostate cancer prevention and treatment (Current Opinion in Oncology).\n\n Swallowing difficulties are among the most problematic outcomes associated with head and neck cancer, and maintaining an oral diet and engaging in swallowing exercises during radiation have been shown to have a positive impact on swallowing physiology and patient-perceived swallowing-related quality of life (Current Opinion in Otolaryngology & Head and Neck Surgery). The effects of polyunsaturated fatty acids (PUFAs) on human health and their potential role in cancer prevention and treatment have been the subject of recent research, with n-3 PUFAs showing promise in cancer prevention and treatment (Current Medicinal Chemistry).\n\n Finally, early diagnosis of genodermatosis-associated hereditary cancer predisposition syndromes provides an opportunity to implement risk-reduction measures prior to a cancer diagnosis, highlighting the importance of recognizing the clinical features of these syndromes (Current Genetic Medicine Reports).\n\n In conclusion, cancer prevention encompasses a multifaceted approach, involving dietary interventions, lifestyle modifications, early detection, and personalized treatment strategies. Understanding the complex interplay of genetic, environmental, and lifestyle factors is crucial for developing effective cancer prevention strategies."),
                            ),
                          ),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      "volume_up Cancer prevention focuses on lifestyle changes, vaccinations, and screenings to reduce your risk of developing the disease.",
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
                                path: 'assets/BD.jfif',
                                heading: 'Healthy Lifestyle Choices',
                                description:
                                    "Cancer is a significant global health concern, with lifestyle and genetic factors both playing crucial roles in its development. Research has consistently shown that adopting a healthy lifestyle can significantly reduce the risk of various types of cancer. A study conducted in the European Union found that maintaining a healthy weight, being physically active, and consuming a diet rich in whole grains, fruits, non-starchy vegetables, and legumes, while limiting processed and fast food, red meat, and alcohol, can effectively reduce the risk of cancer (Nutricion hospitalaria). Another study in the UK Biobank revealed that adhering to a healthy lifestyle could substantially reduce the risk of bladder cancer across all genetic risk groups, with an optimal lifestyle associated with a 50% lower risk of bladder cancer compared to a poor lifestyle (BMC cancer).\n\n Physical activity has also been identified as a key factor in cancer prevention. A systematic review found strong evidence for an association between higher levels of physical activity and reduced risks of various cancers, including bladder, breast, colon, endometrial, esophageal adenocarcinoma, renal, and gastric cancers, with relative risk reductions ranging from approximately 10% to 20% (Medicine and science in sports and exercise). Furthermore, a study in the Women's Health Initiative and the European Prospective Investigation into Cancer and Nutrition cohort demonstrated that a healthy lifestyle index, which includes factors such as smoking, alcohol intake, diet composition, physical activity, body weight, and waist circumference, was associated with a reduced risk of pancreatic cancer in postmenopausal women (Cancer causes & control : CCC, European journal of epidemiology).\n\n The impact of lifestyle factors on cancer risk has also been studied in specific populations. A study among Romanian university students found that future educational activities should focus on promoting better nutritional habits, decreasing alcohol consumption, and offering appropriate services for weight management to reduce cancer risk (International journal of general medicine). Additionally, a study in the Dongfeng-Tongji Cohort in China revealed that a healthy lifestyle was associated with a reduced risk of cancer in retired individuals, with following all five healthy lifestyle factors potentially preventing 15% of incident cancer cases (Annals of medicine).\n\n The role of genetic factors in cancer risk has also been investigated, with studies showing that genetic risk and unhealthy lifestyle categories were independently associated with susceptibility to inflammatory bowel disease and that adherence to a favorable lifestyle was associated with a nearly 50% lower risk of Crohn's disease and ulcerative colitis among individuals at high genetic risk (The American journal of gastroenterology). Furthermore, a study in the UK Biobank demonstrated that the estimated effect of adherence to a healthy lifestyle was as strong as the effect of having a lower polygenic risk score for colorectal cancer, indicating that a healthy lifestyle can offset genetic risk to a substantial extent (Cancer biology & medicine).\n\n In conclusion, the evidence from multiple studies consistently supports the significant impact of healthy lifestyle choices in reducing the risk of cancer. These findings emphasize the importance of promoting and adopting healthy behaviors, including maintaining a healthy weight, being physically active, consuming a balanced diet, limiting alcohol consumption, and avoiding smoking, to prevent cancer and improve overall health."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Healthy Lifestyle Choices\n',
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
                                    "Maintaining a healthy weight through balanced diet and exercise, avoiding tobacco use, and limiting alcohol consumption all significantly reduce cancer risk.",
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
                            const Image(image: AssetImage('assets/BD.jfif'))),
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
                                path: 'assets/vaccine.jfif',
                                heading: 'Vaccinations',
                                description:
                                    "According to a narrative review published in PubMed, triple-negative breast cancers (TNBCs) are aggressive tumors with a high recurrence rate and a tendency for chemoresistance. The review highlights various treatment options for TNBC, including chemotherapeutic regimens involving anthracyclines, taxanes, and antimetabolites for early-stage TNBC. Platinum-based therapies have shown improvement in pathologic complete response (pCR), but their contribution to disease-free survival (DFS) and overall survival (OS) is conflicting. Adjuvant capecitabine has demonstrated significant improvement in OS for patients with residual disease after neoadjuvant chemotherapy and surgical intervention. Metastatic TNBC (mTNBC) with high mutation burden may benefit from targeted therapies and immune checkpoint inhibitors, particularly those expressing programmed death ligand-1 (PD-L1) receptors. Antibody-drug conjugates (ADCs) have shown significant impact on survival in mTNBC, regardless of the level of biomarkers expressed by the tumor cells. PARP inhibitors have shown promise in improving survival in newly diagnosed, treatment-naive mTNBC, particularly in patients with somatic breast cancer (BRCA) and partner and localizer of BRCA-2 (PALB2) mutations. The review also suggests that the future of treatment may involve anti-androgen therapy or the development of cancer vaccinations to increase the immunogenicity of the tumor environment. The management of TNBC involves treatment with multimodal chemotherapy, immune checkpoint inhibitors, and ADCs, with the optimal approach depending on various factors such as the tumor stage, mutational burden, comorbid conditions, and patient's functional status.\n\n   This comprehensive review provides insights into the current treatment options for TNBC, emphasizing the potential of targeted therapies, immune checkpoint inhibitors, and antibody-drug conjugates in improving survival outcomes for patients. Additionally, the review suggests the potential future development of cancer vaccinations to enhance the immunogenicity of the tumor environment, offering a promising avenue for the prevention and treatment of TNBC."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Vaccinations\n',
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
                                    "Getting vaccinated against certain viruses like HPV (human papillomavirus) and Hepatitis B can prevent cancers associated with these infections.",
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
                            image: AssetImage('assets/vaccine.jfif'))),
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
                                path: 'assets/ed.jfif',
                                heading: 'Early Detection and Screening',
                                description:
                                    "Early detection and screening play a crucial role in the prevention of cancer. Screening for prostate cancer, colorectal cancer, breast cancer, cervical cancer, and other types of cancer has been shown to significantly reduce cancer incidence and mortality. The New England Journal of Medicine emphasizes the importance of screening for prostate cancer, while MMW Fortschritte der Medizin discusses the prevention and early detection of colorectal cancer.\n\n Breast cancer is a common concern among women, and late-stage presentation has been attributed to knowledge deficits and lack of screening services. A study published in PloS One aimed to integrate breast cancer prevention and early detection into cancer palliative care in Ghana. The study developed a model based on the experiences of women diagnosed with advanced breast cancer, their relatives, and clinicians in a palliative care setting. This model aims to facilitate breast cancer education, teach breast self-examination, and offer clinical breast examination to families and micro-communities of advanced breast cancer patients in resource-limited settings.\n\n Cervical cancer screening has resulted in declines in cervical cancer incidence and mortality in the United States. Guidelines continue to evolve, and vaccination represents a targeted strategy for prevention. Additionally, evidence-based guidelines for cervical cancer prevention and screening have been developed to address the disproportionate burden of cervical cancer in low-middle income countries (LMICs). However, challenges such as organizing prevention and screening services, access to screening facilities, and follow-up management remain.\n\n Patient and public involvement in cancer prevention, screening, and early detection research can produce high-quality, relevant research that better addresses the needs of patients and their families. A systematic review published in Preventive Medicine found that high-level involvement of patients and the public in cancer prevention, screening, and early detection research is feasible and has several advantages, including improved study design and recruitment.\n\n The role of nurses in cancer prevention and early detection in low- and middle-income countries (LMICs) is also crucial. A scoping review published in the Asia-Pacific Journal of Oncology Nursing highlighted the roles and activities of nurses in cancer prevention and early detection in LMICs, emphasizing the need for additional cancer workforce data sources and future research to measure the impact of nursing interventions in both primary and secondary cancer prevention.\n\n In summary, early detection and screening are essential components of cancer prevention, and efforts are needed to facilitate the discovery of new biomarkers for screening, as well as to address barriers to the implementation of new cancer screening discoveries. Collaboration among healthcare professionals, patients, families, and micro-communities, along with the development of effective models and guidelines, is crucial for successful cancer prevention and early detection efforts."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Early Detection and Screening\n',
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
                                    'Regular screenings for specific cancers like colonoscopies for colorectal cancer or mammograms for breast cancer allow for early detection and treatment, improving outcomes.',
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
                            image: AssetImage('assets/ed.jfif'))),
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
                                path: 'assets/lc.jfif',
                                heading: 'Limiting Carcinogen Exposure',
                                description:
                                    "Recent advances in the field of carcinogenesis have highlighted the critical role of epigenetic mechanisms, microRNAs (miRNAs), chromosomal instability, and oxidative stress in the development and progression of cancer. Epigenetic phenomena, particularly DNA methylation and histone modifications, have been implicated in cancer development, and efforts are underway to incorporate epigenetics and epigenomics into carcinogen identification and safety assessment (Carcinogenesis). Similarly, miRNAs have been identified as potential drivers of chemical-induced carcinogenesis, with changes in miRNA expression serving as early indicators of the carcinogenic process and markers for carcinogen exposure (Toxicology and Applied Pharmacology). Furthermore, chromosomal instability and aneuploidy have been associated with oral cancer risk, and high-resolution DNA flow cytometry has shown promise in predicting the risk of oral cancer development (Future Oncology).\n\n In the context of lung cancer, chemoprevention strategies have been explored, with a focus on the use of specific natural or pharmacologic agents to reverse, suppress, or prevent the carcinogenic process. However, conflicting results have been reported from studies evaluating the effects of agents such as retinoids on bronchial metaplasia and dysplasia, highlighting the complexity of chemoprevention trials (Oncology). Additionally, the transcription factor NFAT has been implicated in cancer development, with experimental evidence suggesting its critical role in carcinogen-induced cell transformation and tumorigenicity. Efforts are underway to develop NFAT inhibitors as potential targets for chemoprevention (Current Cancer Drug Targets).\n\n Oxidative mechanisms have also been implicated in carcinogenesis, with free radicals and other reactive oxygen species (ROS) being recognized as mediators of the phenotypic and genotypic changes that lead to neoplasia. The molecular mechanisms through which free radicals participate in the carcinogenic process have been explored, shedding light on their potential contribution to cancer development (British Medical Bulletin). Furthermore, the imbalance between neutrophil elastase and alpha 1-antitrypsin has been associated with tissue damage and increased risk of various cancers, highlighting the role of protease-protease inhibitor counterparts in creating a favorable tissue environment for carcinogens and tumor progression (The Lancet Oncology).\n\n The role of the transcription factor NRF2 in cancer initiation and progression has been investigated, with studies confirming its protective effect against chemical carcinogenesis. However, the mechanistic details underlying its role in cancer development and progression, particularly in cancers arising from spontaneous mutations, require further exploration (Molecular Carcinogenesis). Additionally, the impact of environmental chemical carcinogens on miRNA expression has been studied, with altered miRNA expression considered a vital pathogenic factor in xenobiotic-induced cancer development. Understanding the interaction of miRNAs with environmental chemicals may provide important insights into the mechanisms underlying the pathogenesis of chemically induced cancers (Environmental Geochemistry and Health).\n\n Occupational cancer in Britain has been studied using statistical methodology to estimate the current burden of occupational cancer. The attributable fraction (AF) has been used to combine the relative risk associated with exposure with the proportion exposed, providing insights into the numbers of occupation-attributable cancer cases (British Journal of Cancer). Furthermore, sex differences in hepatotoxic, inflammatory, and proliferative responses in mouse models of liver carcinogenesis have been investigated, with male mice showing a greater incidence of liver cancer than females. Chronic liver damage, inflammation, and proliferation have been identified as potential drivers for liver cancer development, with sex differences in responses to carcinogen exposure being explored over time following sexual maturation (Toxicology).\n\n Bulky DNA adducts have been studied in relation to breast cancer risk, with molecular epidemiology studies reporting a modest association between DNA adducts and breast cancer risk. However, no significant association between bulky DNA adducts and breast cancer risk was observed in a nested case-control study, highlighting the need for larger studies using different methods and biomarkers to better evaluate the role of specific environmental carcinogens in breast carcinogenesis (Breast Cancer Research and Treatment). Additionally, the role of oxidative/nitrosative stress-mediated Bcl-2 regulation in apoptosis and malignant transformation has been explored, providing insights into the impact of reactive oxygen and nitrogen species on Bcl-2 expression levels and its association with cancer development (Annals of the New York Academy of Sciences).\n\n Dietary zinc deficiency has been implicated in the pathogenesis of esophageal squamous cell carcinoma (ESCC), with prolonged zinc deficiency amplifying inflammation and increasing the risk of ESCC development. The molecular definition of zinc deficiency-induced inflammation as a critical factor in ESCC development has important clinical implications for the prevention of this deadly disease (Oncogene)."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Limiting Carcinogen Exposure\n',
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
                                    'Reducing exposure to environmental carcinogens like ultraviolet radiation from the sun or secondhand smoke helps lower cancer risk.',
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
                            image: AssetImage('assets/lc.jfif'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),
          ],
        ));
  }
}
