import 'package:cares_app/widgets/information.dart';
import 'package:flutter/material.dart';

class AboutCancer extends StatefulWidget {
  const AboutCancer({super.key});

  @override
  State<AboutCancer> createState() => _AboutCancerState();
}

class _AboutCancerState extends State<AboutCancer> {
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
                      image: AssetImage('assets/what_is_cancer.png'),
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
                        'What is Cancer ?',
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
                                  path: 'assets/what_is_cancer.png',
                                  heading: 'What is Cancer ?',
                                  description:
                                      "Cancer is not one disease, but a collection of related diseases that can occur almost anywhere in the body. At its most basic, cancer is a disease of the genes in the cells of our body. Genes control the way our cells work. But, changes to these genes can cause cells to malfunction, causing them to grow and divide when they should not—or preventing them from dying when they should. These abnormal cells can become cancer.\n\n Understanding how genetic changes cause cancer is one way to understand this disease, while cancer statistics is another. Cancer statistics help scientists understand the burden of cancer on society. Statistics can tell us things such as how many people are diagnosed with and die from cancer each year and the number of people who are living after a cancer diagnosis. Changes in statistics over time can help scientists find areas where progress is needed. Cancer statistics also help scientists understand cancer health disparities. Examples of disparities include the higher cancer death rates, less frequent use of proven screening tests, and higher rates of advanced cancer diagnoses that are found in certain groups of people. Cancer is a disease in which some of the body’s cells grow uncontrollably and spread to other parts of the body. Cancer can start almost anywhere in the human body, which is made up of trillions of cells. Normally, human cells grow and multiply (through a process called cell division) to form new cells as the body needs them. When cells grow old or become damaged, they die, and new cells take their place. Sometimes this orderly process breaks down, and abnormal or damaged cells grow and multiply when they shouldn’t. These cells may form tumors, which are lumps of tissue. Tumors can be cancerous or not cancerous (benign).\n Cancerous tumors spread into, or invade, nearby tissues and can travel to distant places in the body to form new tumors (a process called metastasis). Cancerous tumors may also be called malignant tumors. Many cancers form solid tumors, but cancers of the blood, such as leukemias, generally do not.\n\n Benign tumors do not spread into, or invade, nearby tissues. When removed, benign tumors usually don’t grow back, whereas cancerous tumors sometimes do. Benign tumors can sometimes be quite large, however. Some can cause serious symptoms or be life threatening, such as benign tumors in the brain. Cancer is a term used to describe a group of diseases characterized by abnormal cell growth that can invade and spread to other parts of the body. Normally, cells in the body grow, divide, and die in an orderly fashion. However, cancer disrupts this process. When cancer develops, cells can grow uncontrollably, forming masses called tumors. There are many different types of cancer, each with its own characteristics. Some cancers grow and spread quickly, while others grow more slowly. Cancer can arise almost anywhere in the body, and its symptoms and treatment depend on the type and location of the cancer. Causes of cancer can include genetic factors, environmental exposures (such as tobacco smoke, radiation, chemicals), and lifestyle factors (such as diet, physical activity). Diagnosis often involves imaging tests, biopsies, and other procedures to determine the type and extent of cancer.\n\n Treatment options for cancer vary but may include surgery, radiation therapy, chemotherapy, immunotherapy, and targeted therapy.\n The goal of treatment is often to cure the cancer, prolong life, or improve quality of life by shrinking tumors and relieving symptoms.\n\n Cell Growth and Division:\n Cancer begins when normal cells undergo genetic changes (mutations) that cause them to grow and divide uncontrollably. These mutations can affect genes that regulate cell growth, division, and repair mechanisms.\n\n Tumor Formation:\n As cancer cells divide rapidly, they can form a mass of abnormal cells called a tumor. Tumors can be benign (non-cancerous) or malignant (cancerous). Benign tumors do not invade nearby tissues or spread to other parts of the body, while malignant tumors can invade surrounding tissue and metastasize (spread) to other organs.\n\n Metastasis:\n Metastasis is a complex process where cancer cells break away from the primary tumor, travel through the bloodstream or lymphatic system, and establish new tumors in other parts of the body. Metastatic cancer is often more difficult to treat and can affect prognosis significantly.\n\n Role of Genetics in Cancer:\n\n Genetic Mutations:\n Genetic mutations can be inherited or acquired during a person's lifetime. Inherited mutations (germline mutations) are passed down through generations and can increase susceptibility to certain types of cancer (e.g., BRCA mutations in breast and ovarian cancer). Acquired mutations (somatic mutations) occur randomly or due to exposure to carcinogens (cancer-causing agents) and contribute to the development of cancer.\n\n Cancer Genomics:\n Advances in genomic sequencing have enabled researchers to identify specific mutations and genetic alterations associated with different types of cancer. This knowledge is used to develop targeted therapies that aim to block the effects of specific mutations or pathways involved in cancer growth."),
                            ),
                          ),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      'Cancer is a disease caused by abnormal cell division that can invade and destroy healthy tissue.',
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
                                path: 'assets/dev_of_cancer.jpg',
                                heading: 'How is Cancer developed ?',
                                description:
                                    "Cancer is a genetic disease—that is, it is caused by changes to genes that control the way our cells function, especially how they grow and divide. Genetic changes that cause cancer can happen because: of errors that occur as cells divide. of damage to DNA caused by harmful substances in the environment, such as the chemicals in tobacco smoke and ultraviolet rays from the sun. (Our Cancer Causes and Prevention section has more information.) they were inherited from our parents. The body normally eliminates cells with damaged DNA before they turn cancerous. But the body’s ability to do so goes down as we age. This is part of the reason why there is a higher risk of cancer later in life.\n\n Each person’s cancer has a unique combination of genetic changes. As the cancer continues to grow, additional changes will occur. Even within the same tumor, different cells may have different genetic changes. Cancer develops when normal cells undergo genetic mutations that cause them to grow and divide uncontrollably.\n There are several key steps in the development of cancer:\n\n 1. Initiation:\n This is the initial genetic mutation that occurs in a single cell's DNA. This mutation can be caused by various factors such as exposure to carcinogens (like tobacco smoke, UV radiation, or certain chemicals), genetic predisposition (inherited mutations), or random errors in DNA replication.\n\n 2. Promotion:\n After the initiation, the mutated cell begins to divide and replicate, forming a clone of cells with the same mutation. Promoters are substances or conditions that encourage the growth of these mutated cells. Chronic irritation or inflammation, hormonal factors, or immune system suppression can act as promoters.\n\n 3. Progression:\n Over time, additional mutations accumulate in these cells, further altering their behavior. These mutations can affect genes that control cell growth, division, and repair mechanisms. As a result, the cells become increasingly abnormal and may gain the ability to invade nearby tissues (invasion) and spread to other parts of the body (metastasis).\n\n 4. Metastasis:\n This is the spread of cancer cells from the original (primary) tumor to other parts of the body. Cancer cells can invade nearby healthy tissues and enter the bloodstream or lymphatic system, allowing them to travel to distant organs and form new tumors.\n\n The development of cancer is a complex process influenced by genetic, environmental, and lifestyle factors. Not all cancers follow the exact same pathway, but these general steps provide a framework for understanding how cancer can arise from a single abnormal cell. Early detection and treatment are crucial in improving outcomes for cancer patients."),
                          ),
                        ),
                        child: RichText(
                          text: TextSpan(
                              text: 'How is Cancer developed ?\n',
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
                                      'Cancer forms from genetic mutations that cause uncontrolled cell growth and tumors.',
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
                              ]),
                        ),
                      ),
                    ),
                    Container(
                        height: height * 0.136,
                        width: width * 0.3,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Image(
                            image: AssetImage('assets/dev_of_cancer.jpg'))),
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
                                path: 'assets/spread.jpg',
                                heading: 'How does Cancer Spread ?',
                                description:
                                    "A cancer that has spread from the place where it first formed to another place in the body is called metastatic cancer. The process by which cancer cells spread to other parts of the body is called metastasis. Metastatic cancer has the same name and the same type of cancer cells as the original, or primary, cancer. For example, breast cancer that forms a metastatic tumor in the lung is metastatic breast cancer, not lung cancer. Under a microscope, metastatic cancer cells generally look the same as cells of the original cancer. Moreover, metastatic cancer cells and cells of the original cancer usually have some molecular features in common, such as the presence of specific chromosome changes.\n\n In some cases, treatment may help prolong the lives of people with metastatic cancer. In other cases, the primary goal of treatment for metastatic cancer is to control the growth of the cancer or to relieve symptoms it is causing. Metastatic tumors can cause severe damage to how the body functions, and most people who die of cancer die of metastatic disease. Cancer can spread through a process called metastasis, which involves the spread of cancer cells from the original (primary) tumor to other parts of the body. Here’s a detailed explanation of how cancer spreads:\n\n Metastasis Process:\n Local Invasion:\n Cancer cells first invade nearby healthy tissue surrounding the primary tumor. This occurs when cancer cells acquire the ability to penetrate and migrate through normal tissue barriers.\n\n Intravasation:\n Once cancer cells invade nearby tissue, they can enter nearby blood vessels (veins or lymphatic vessels). This process is known as intravasation. Cancer cells can also spread through the lymphatic system, entering lymphatic vessels and traveling to nearby lymph nodes.\n\n Circulation:\n Cancer cells that have entered the bloodstream or lymphatic system are carried to distant parts of the body. In the bloodstream, cancer cells can travel to virtually any part of the body, while in the lymphatic system, they tend to spread to lymph nodes and then potentially to other organs.\n\n Arrest and Extravasation:\n As cancer cells travel through the bloodstream or lymphatic vessels, they may become lodged in small blood vessels (capillaries) at distant sites. This process is called arrest. Cancer cells that arrest in capillaries can then squeeze through vessel walls to enter the surrounding tissue, a process known as extravasation.\n\n Formation of Secondary Tumors (Metastases):\n Once cancer cells extravasate and settle in a new location, they can begin to grow and form new tumors. These secondary tumors are known as metastases. The ability of cancer cells to survive and grow in distant organs is influenced by interactions with the local microenvironment and the immune system of the new tissue site.\n\n Factors Influencing Metastasis:\n Cancer Type and Stage:\n Some cancers are more likely to metastasize than others, and the stage of cancer at diagnosis (how far it has spread) affects the likelihood of metastasis.\n\n Genetic and Molecular Factors:\n Genetic mutations and alterations within cancer cells can enhance their ability to invade and metastasize.\n\n Microenvironment:\n The environment surrounding the primary tumor and at distant metastatic sites plays a crucial role in supporting or inhibiting metastasis.\n Immune System:\n The immune system can both promote and inhibit metastasis through complex interactions with cancer cells and the surrounding tissue.\n\n Diagnosis and Treatment Implications:\n Detecting metastasis often involves imaging studies (like CT scans, MRIs, or PET scans) to identify tumors in other parts of the body. Treatment strategies for metastatic cancer typically aim to slow the growth of metastases, shrink tumors, and relieve symptoms to improve quality of life. Research and Future Directions: Understanding the molecular mechanisms underlying metastasis is a key focus of cancer research. Advances in this area may lead to new therapies that specifically target metastatic processes, potentially improving outcomes for individuals with advanced cancer."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'How does Cancer Spread ?\n',
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
                                    'Cancer can spread through blood or lymph vessels to form new tumors in other parts of the body.',
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
                            image: AssetImage('assets/spread.jpg'))),
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
                                path: 'assets/impact.png',
                                heading: 'Impact on the Body',
                                description:
                                    "Cancer disrupts the body's normal functioning in a multitude of ways. Here's a breakdown of its impact:\n\n Cellular Level:\n Uncontrolled Growth:\n Cancer cells lose the ability to regulate their growth, dividing uncontrollably and forming tumors. These tumors can crowd healthy tissues, preventing them from functioning properly.\n\n Invasion and Metastasis:\n Cancerous cells can develop the ability to invade surrounding healthy tissues, damaging them directly. In some cases, cancer cells can break away from the primary tumor and travel through the bloodstream or lymphatic system to establish secondary tumors (metastasis) in distant organs, causing widespread damage.\n\n Disrupted Communication:\n Healthy cells communicate with each other to maintain normal functions. Cancer cells disrupt these communication pathways, leading to malfunctioning of entire tissues and organs.\n\n Organ and System Level:\n Impaired Function: Depending on the location and type of cancer, various organs and systems can be affected. For example, lung cancer can hinder breathing, digestive system cancers may impact nutrient absorption, and brain tumors can cause neurological problems.\n\n Nutrient Depletion:\n Cancer cells are greedy for nutrients, often outcompeting healthy cells for vital resources. This can lead to malnutrition, fatigue, and muscle wasting.\n\n Immune System Suppression:\n Cancer can suppress the immune system, making the body more susceptible to infections and hindering its ability to fight the cancer itself.\n\n Body-Wide Effects:\n Fatigue:\n Many factors contribute to fatigue in cancer patients, including the disease itself, treatment side effects, and nutritional deficiencies.\n\n Pain:\n Tumors can press on nerves or bones, causing pain. Additionally, some treatments like surgery can be painful.\n\n Bleeding and Blood Clots:\n Cancer can disrupt blood clotting mechanisms, increasing the risk of bleeding or blood clots. Emotional and Psychological Impact: A cancer diagnosis can be emotionally devastating, leading to anxiety, depression, and fear. Additionally, treatment side effects can impact body image and self-esteem.\n\n Treatment Side Effects:\n While cancer treatments aim to destroy cancer cells, they can also have side effects that impact the body:\n Chemotherapy:\n Can damage healthy cells, leading to nausea, vomiting, hair loss, fatigue, and increased risk of infection.\n\n Radiation Therapy:\n Can damage tissues in the treatment area, causing skin irritation, fatigue, and organ damage depending on the location of treatment.\n\n Surgery:\n Can cause pain, scarring, and tissue damage depending on the extent of the surgery.\n\n It's important to note:\n The impact of cancer varies greatly depending on the type and stage of the cancer, as well as the individual's overall health. Treatments are constantly evolving, with a focus on minimizing side effects and improving the quality of life for cancer patients. By understanding the impact of cancer on the body, we can appreciate the importance of early detection, prevention strategies, and the development of more targeted and less-toxic treatments."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'Impact on the Body \n',
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
                                    'Cancer disrupts normal functions by stealing resources and interfering with processes.',
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
                            image: AssetImage('assets/impact.png'))),
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
                                path: 'assets/micro_envi.png',
                                heading: 'The Tumor Micorenvironment',
                                description:
                                    "The tumor microenvironment (TME) refers to the complex milieu surrounding a tumor, including the surrounding blood vessels, immune cells, fibroblasts, signaling molecules, and the extracellular matrix. It plays a crucial role in tumor development, progression, and metastasis.\n\n Understanding the TME is essential for developing effective cancer therapies. Here are key components and aspects of the TME:\n Key Components of the Tumor Microenvironment:\n\n 1. Cancer Cells:\n The primary malignant cells that proliferate uncontrollably.\n\n 2. Immune Cells:\n Includes various types of immune cells such as T cells, B cells, macrophages, dendritic cells, and natural killer cells. These cells can either attack the tumor or be co-opted to support tumor growth.\n\n 3. Fibroblasts:\n Cancer-associated fibroblasts (CAFs) are involved in the production of the extracellular matrix and can promote tumor growth and metastasis.\n\n 4. Blood Vessels:\n Tumors stimulate the formation of new blood vessels (angiogenesis) to supply oxygen and nutrients, aiding their growth.\n\n 5. Extracellular Matrix (ECM):\n A network of proteins and other molecules that provide structural and biochemical support to surrounding cells.\n\n 6. Signaling Molecules:\n Cytokines, chemokines, and growth factors that facilitate communication between cells and influence tumor behavior.\n\n Functions and Influence of the TME:\n\n 1. Tumor Growth and Survival:\n The TME provides essential support for tumor growth through nutrients, oxygen, and survival signals.\n\n 2. Immune Evasion:\n Tumors can manipulate the TME to suppress the immune response, helping them evade detection and destruction by the immune system.\n\n 3. Metastasis:\n The TME can facilitate tumor invasion and dissemination to distant organs.\n\n 4. Therapeutic Resistance:\n Interactions within the TME can lead to resistance against chemotherapy, radiation therapy, and immunotherapy.\n\n Therapeutic Implications:\n 1. Targeting Angiogenesis:\n Drugs like bevacizumab (an anti-VEGF antibody) inhibit the formation of new blood vessels.\n\n 2. Immune Modulation:\n Immune checkpoint inhibitors (e.g., pembrolizumab, nivolumab) enhance the immune system's ability to attack cancer cells.\n\n 3. Modifying the ECM:\n Strategies to alter the ECM can reduce barriers to drug delivery and decrease tumor stiffness.\n\n 4. Targeting Tumor-Associated Macrophages (TAMs):\n Therapies aim to reprogram TAMs from a pro-tumor to an anti-tumor phenotype. Research and Future Directions: - Single-Cell Analysis:\n To understand the heterogeneity of cells within the TME.\n\n - Organoids and 3D Models:\n To study the TME in a controlled environment that mimics human tissues.\n\n - Biomarkers:\n Identifying TME-specific biomarkers for early diagnosis and monitoring treatment response.\n\n - Combination Therapies:\n Combining traditional therapies with TME-targeting agents to enhance treatment efficacy. In conclusion, the tumor microenvironment is a critical factor in cancer biology, influencing how tumors grow, evade the immune system, and resist treatments. Advances in understanding and manipulating the TME hold promise for improving cancer therapies and patient outcomes."),
                          ),
                        ),
                        child: RichText(
                            text: TextSpan(
                                text: 'The Tumor Micorenvironment\n',
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
                                    'Tumors create a supportive ecosystem of cells and factors that fuel their growth and spread.',
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
                            image: AssetImage('assets/micro_envi.png'))),
                    SizedBox(
                      width: width * 0.007,
                    )
                  ],
                )),
          ],
        ));
  }
}
