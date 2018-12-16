//
//  MockData.swift
//  SampleCloudSyncApp
//
//  Created by Tim on 12/15/18.
//  Copyright © 2018 LyttleBit. All rights reserved.
//

import Foundation

final class MockData: QandADataService {
    func fetch(onComplete: ([QAndAItem]) -> Void) {
        var response = [QAndAItem]()
        for item in rawQAndA {
            guard let q = item["question"] as? String,
                let a = item["response"] as? String else {
                    break
            }
            let item = QAndAItem(question: q, response: a)
            response.append(item)
        }
        onComplete(response)
    }
    
    private var rawQAndA = [
    [
        "id": 1,
        "question": "Will a form be developed to provide guidance on compliance for the new opioid education requirements related to implementing the Start Talking Form, and opioid disclosure form, required by Public Act 246 of 2017?",
        "response": "The Department of Health and Human Services (DHHS) and Licensing and Regulatory Affairs (LARA) worked with various health care providers and stakeholders in developing a single page form that can be used to meet the requirements of this new law. This new form can be found under the “Prescribers” tab at the DHHS website: www.michigan.gov/stopoverdoses."
        ],
    [
        "id": 2,
        "question": "Is a provider required to use the state’s form?",
        "response": " No, but the provider will have to use a similar form that is saved to the patient’s medical record and complies with the requirements of Public Act 246 of 2017"
        ],
    [
        "id": 3,
        "question": "Can a provider use the state’s form as a template and create a form that can be used electronically?",
        "response": "Yes, however both DHHS and LARA recommend that a provider reach out to their legal counsel and/or health care association to make sure the form meets the requirements of the law."
        ],
    [
        "id": 4,
        "question": "Will the state’s form be in other languages?",
        "response": "Yes, in addition to English, the form will be available in Spanish and Arabic."
        ],
    [
        "id": 5,
        "question": "Can a prescriber delegate the task of providing a patient with the opioid education requirements of Public Act 246 of 2017 to another health professional?",
        "response": "a. Pursuant to MCL 333.16215 a prescriber could potentially delegate the responsibility of providing opioid risk education for a patient to another licensed or unlicensed health professional, provided that health professional has sufficient training and background.b. Please note that not all prescribers as defined under the Public Health Code have the ability to delegate under the delegation provision of MCL 333.16215."
        ],
    [
        "id": 6,
        "question": "Can a prescriber delegate to another licensed health professional the signing of the form on behalf of the licensed prescriber at the point of discharge of the patient?",
        "response": "a. Yes. Pursuant to MCL 333.16215 this is allowed. b. Please note that not all prescribers as defined under the Public Health Code have the ability to delegate under the delegation provision of MCL 333.16215."
        ],
    [
        "id": 7,
        "question": "How often must practitioners provide opioid education to patients as required in Public Act 246 of 2017?",
        "response": "a. This requirement applies to both minors and adult patients who are being prescribed an opioid beginning June 1, 2018. If a minor or adult patient is currently receiving any opioid prior to June 1, 2018 this form would not need to be completed for that specific prescription, as the requirements do not apply retroactively.b. Please note, practitioners should provide minor patients with the required opioid education and start talking form prior to issuing the first prescription, in a course of treatment, for a controlled substance that is an opioid. Continuation of the established previous therapy does not require a new form. The law does not define “course of treatment” so it will be up to the provider to determine and use his/her professional medical/clinical judgement and document appropriately. Also, change in dosage of the same opioid for the minor patient, a new start talking form would not be needed.c. Practitioners treating, on or after June 1, 2018, an adult patient with an opioid would need to provide the opioid education and start talking form prior to prescribing or dispensing the opioid to the patient. However, if the prescriber needs to change the dosage or issue a new opioid for the same adult patient after the initial start talking form has been signed and the opioid education provided, anew form would not need to be completed. d. If a minor or adult patient has been on an opioid prior to June 1, 2018 and theprescriber decides to change the minor or adult patient’s opioid to a new opioid, then the prescriber would need to provide the opioid education and complete the start talking form accordingly prior to prescribing or dispensing the drug to the patient. The completed form would need to be saved to the patient’s medical file. e. It is important to note that the spirit and intent of the law is for prescribers to provide education around the risks of taking an opioid so their patients, regardless of age (minor or adult) know about the dangers and risks involved in taking these drugs while treating their condition."
        ],
    [
        "id": 8,
        "question": "Does the Start Talking Form have to be completed for inpatient administration of an opioid drug?",
        "response": "a. No, for inpatient as well as outpatient surgical procedures, the form does not have to be completed given that the opioid is being administered while the patient is at the facility. For example, administration of the opioid for inpatient stay within, but not limited to, a hospital, freestanding surgical outpatient facility, skilled nursing facility, hospice, homes for aged, etc. b. With regard to minor patients, please refer to the PA 246 of 2017, Section 7303b(2), for a list of exemptions to the form. c. Please note the Michigan Public Health Code under Section 7103(1) defines administering of a drug as follows: • Sec. 7103(1) “Administer” means the direct application of a controlled substance, whether by injection, inhalation, ingestion, or other means, to the body of a patient or research subject by a practitioner, or practitioner’s presence by his or her authorized agent, or the patient or research subject at the direction and in the presence of the practitioner. d. Please note the Michigan Public Health Code under Section 7105(3) defines dispensing of a drug as follows: • Sec. 7105(3) “Dispense” means to deliver or issue a controlled substance to an ultimate user or research subject by or pursuant to the lawful order of a practitioner, including the prescribing, administering, or compounding necessary to prepare the substance for the delivery or issuance."
        ],
    [
        "id": 9,
        "question": "Does the Start Talking Form apply to Veterinarian Medicine?",
        "response": "No, the Start Talking Form only applies to patients that are human."
        ],
    [
        "id": 10,
        "question": "How is a bona fide prescriber-patient relationship defined for the purpose of prescribing controlled substances? ***Please Take Notice PA 101 of 2018, moved the effective date of PA 247 of 2017 to March 31, 2019, or if rules are promulgated before this date that provide for alternatives to the bona fide prescriber-patient relationship, the date on which rules are promulgated.",
        "response": "LARA is working with the licensing boards, health care providers and stakeholders to address this new law through administrative rules prior to the new effective date of March 31, 2019."
        ],
    [
        "id": 11,
        "question": "Are prescribers required to see a patient in-person following the prescribing of a controlled substance?",
        "response": "Public Act 247 of 2017 does not provide explicit guidelines for what constitutes follow-up care. It is up to each practitioner to put forth a good-faith effort to determine what constitutes follow-up care, taking into consideration the unique variables that exist to meet a patient’s specific circumstances in providing the appropriate medical treatment."
        ],
    [
        "id": 12,
        "question": "Can another physician, covering for a patient’s physician, refill a patient’s controlled substance prescription?",
        "response": "Provided a primary physician has established a bona fide prescriber-patient relationship with the patient receiving a controlled substance refill, the patient’s primary physician may delegate their refill authority under the delegation provisions provided for in MCL 333.16215, to a covering physician or other licensed health professional trained and authorized to perform the practice."
        ],
    [
        "id": 13,
        "question": "Can a phone call fulfill the telemedicine requirements of Public Act 247?",
        "response": "Pursuant to the definition of Telemedicine (defined by MCL 500.3476) states that \"Telemedicine\" means the use of an electronic media to link patients with health care professionals in different locations. To be considered telemedicine under this section, \"the health care professional must be able to examine the patient via a real-time, interactive audio or video, or both, telecommunications system and the patient must be able to interact with the off-site health care professional at the time the services are provided.\""
        ],
    [
        "id": 14,
        "question": "Are licensed prescribers required to register to the Michigan Automated Prescription System (MAPS) prior to prescribing or dispensing a controlled substance?",
        "response": "Yes, the law is effective on June 1, 2018 and prior to prescribing or dispensing a controlled substance to a patient, a licensed prescriber must be registered with MAPS."
        ],
    [
        "id": 15,
        "question": "Are licensed prescribers required to register to the Michigan Automated Prescription System (MAPS) prior to prescribing or dispensing a controlled substance?",
        "response": "Yes, the law is effective on June 1, 2018 and prior to prescribing or dispensing a controlled substance to a patient, a licensed prescriber must be registered with MAPS."
        ],
    [
        "id": 16,
        "question": "Are licensed prescribers required to request MAPS reports prior to prescribing or dispensing a controlled substance?",
        "response": "a. Yes, with the law taking effect on June 1, 2018, a licensed prescriber must request and review a MAPS report prior to prescribing or dispensing a schedule 2-5 controlled substance that exceeds a 3-day supply. Exemptions to this requirement include: i. If the dispensing occurs in a hospital or freestanding surgical outpatient facility licensed under Article 17 and the controlled substance is administered to the patient in that hospital or facility. ii. If the patient is an animal as that term is defined in Section 18802, the dispensing occurs in a veterinary hospital or clinic, and the controlled substance is administered to the animal in that hospital or clinic. iii. If the controlled substance is prescribed by a licensed prescriber who is a veterinarian and the controlled substance will be dispensed by a pharmacist. b. This law does not apply to a prescriber who orders a schedule 2-5 controlled substance for inpatient administration. c. Please note that licensed veterinarians who dispense schedule 2-5 controlled substances in quantities that exceed a 3-day supply, in their clinic or hospital office, are required to review MAPS prior to prescribing or dispensing of the schedule 2-5 controlled substance. d. Please note the Michigan Public Health Code under Section 7103(1) defines administering of a drug as follows: • Sec. 7103(1) “Administer” means the direct application of a controlled substance, whether by injection, inhalation, ingestion, or other means, to the body of a patient or research subject by a practitioner, or practitioner’s presence by his or her authorized agent, or the patient or research subject at the direction and in the presence of the practitioner.e. Please note the Michigan Public Health Code under Section 7105(3) defines dispensing of a drug as follows: • Sec. 7105(3) “Dispense” means to deliver or issue a controlled substance to an ultimate user or research subject by or pursuant to the lawful order of a practitioner, including the prescribing, administering, or compounding necessary to prepare the substance for the delivery or issuance."
        ],
    [
        "id": 17,
        "question": "If a provider issues multiple prescriptions of the same drug on the same date but with instructions that the prescriptions be filled at a later date, such as a “do not fill until date” is the provider mandated to check MAPS on the date the prescriptions are issued or on the dates they are filled?",
        "response": "a. The MAPS mandate is tied to the date the prescription is issued, not the date it is filled or subsequent refill dates. Before issuing a new prescription for a schedule 2-5 controlled substance, the prescriber must obtain and view a MAPS report. b. It is important to note, however, that a provider is still expected to use his or her best clinical judgment in deciding whether issuing multiple prescriptions to a patient is appropriate. c. Also, please be aware that the DEA has regulations around the refilling of schedule 2 controlled substance prescriptions: https://www.deadiversion.usdoj.gov/21cfr/cfr/1306/1306_12.htm"
        ],
    [
        "id": 18,
        "question": "Who should I contact should if I have difficulty registering to MAPS?",
        "response": "Please visit www.michigan.gov/mimapsinfo, for additional MAPS information, training videos, and contact information."
        ],
    [
        "id": 19,
        "question": "How is the mandate to check MAPS going to be enforced? Statute only refers to the checking of MAPS before prescribing or dispensing a schedule 2-5 controlled substance that exceeds a 3-day supply. What constitutes “before”; is there a suggested timeframe for checking MAPS prior to prescribing or dispensing?",
        "response": "It is best practice to check MAPS as close to when the prescribing or dispensing of a schedule 2-5 controlled substance occurs."
        ],
    [
        "id": 20,
        "question": "Are licensees subject to a sanction for failing to register to MAPS prior to prescribing or dispensing a schedule 2-5 controlled substance?",
        "response": "a. The law is effective on June 1, 2018 and the Bureau of Professional Licensing (BPL) within LARA may issue a letter to a licensed prescriber notifying the licensee that he/she may be in violation of the PA 248 of 2017 (mandated registration and use of MAPS). Receiving this letter is not considered discipline. b. However, pursuant to the provisions contained in MCL 333.16221(w) and MCL 333.16226(1)(w), also effective on June 1, 2018, licensees who fail to register with MAPS prior to prescribing or dispensing a controlled substance to a patient, may be subject to board sanctions against their license that include: denial, fine, reprimand, probation, limitation, suspension, revocation, or permanent revocation."
        ],
    [
        "id": 21,
        "question": "Are licensees subject to sanctions for failing to request and review a MAPS report, prior to prescribing or dispensing a schedule 2-5 controlled substance that exceeds a 3-day supply?",
        "response": "a. The law is effective on June 1, 2018 and BPL has the option to issue a letter to a licensed prescriber notifying the licensee that they he/she may be in violation of the requirement to obtain and review a MAPS report prior to prescribing or dispensing a schedule 2-5 controlled substance that exceeds a 3-day supply. Receiving this letter is not considered discipline. b. However, pursuant to the provisions contained in MCL 333.16221(w) and MCL 333.16226(1)(w), also effective on June 1, 2018, licensees who fail to request and review a MAPS report prior to prescribing or dispensing a controlled substance that exceeds a 3-day supply, may be subject to board sanctions that include: denial, fine, reprimand, probation, limitation, suspension, revocation, or permanent revocation."
        ],
    [
        "id": 22,
        "question": "Are all practitioners required to register with MAPS, even if they do not anticipate prescribing or dispensing controlled substances?",
        "response": "a. The law is effective on June 1, 2018 and prescribers are only required to register with MAPS if they are prescribing or dispensing controlled substances, in any quantity."
        ],
    [
        "id": 23,
        "question": "Many physicians have staff (e.g. Registered Nurse, Office Administrator) checking MAPS for them. Will this be in compliance with new regulations as long as the physician checked MAPS, even if they did not personally run MAPS?",
        "response": "a. If a user is registered as a prescriber delegate and requests a MAPS report on the prescriber’s behalf for the prescriber to review, this will be in compliance with new regulations. A prescriber delegate must select the prescriber for whom he/she are requesting a MAPS report. b. Please note it is important that the prescriber reviews the MAPS report prior to prescribing or dispensing a schedule 2-5 controlled substance that exceeds a 3- day supply."
        ],
    [
        "id": 24,
        "question": "How does the Department know when MAPS has been queried?",
        "response": "MAPS software maintains detailed user records of MAPS usage for each user account and the system itself maintains audit trails. The Bureau has the ability to audit a licensee’s MAPS account to review and verify user data to determine compliance."
        ],
    [
        "id": 25,
        "question": "Is the MAPS requirement met if a provider runs a MAPS report for a patient pre-op and dispenses a controlled substance at hospital discharge?",
        "response": "This depends on when the MAPS report was run. If the patient is admitted to a hospital, they will not be filling their own prescription, therefore a MAPS review at admission is adequate. In an outpatient setting, checking MAPS should occur as close to when the schedule 2-5 controlled substance is prescribed and/or dispensed to the patient. Please refer to the answer provided under question 4 on page 8."
        ],
    [
        "id": 26,
        "question": "Are prescribers required to check MAPS for all patients, regardless of age? Are there exemptions for infants or toddlers?",
        "response": "The MAPS requirements apply to all patients, regardless of age."
        ],
    [
        "id": 27,
        "question": "Are VA practitioners in Michigan required to comply with the registration and MAPS report requirements?",
        "response": "No, while not required under federal law to use MAPS, in many instances the VA is using MAPS."
        ],
    [
        "id": 28,
        "question": "What happens if MAPS is down or an internet connection cannot be established to check MAPS? Is there a suggested protocol to follow?",
        "response": "a. If the licensed prescriber’s internet connection is down, making it so the licensee cannot run a MAPS report, it is advised that the licensee document or note such issues and make the best possible clinical judgement on how to appropriately treat the patient. b. If MAPS is down or there is an outage of the system, BPL will work with its vendor, Appriss Health, to get the system resumed. Also, through the system audit trail, BPL will make sure that licensees are not impacted if they are questioned about not checking MAPS during the timeframe of a possible outage of MAPS. c. If licensees experience any difficulty accessing MAPS, they may also contact the MAPS support team at BPL-MAPS@michigan.gov or visiting www.michigan.gov/mimapsinfo."
        ],
    [
        "id": 29,
        "question": "What happens if MAPS is down or an internet connection cannot be established to report data to MAPS? Is there a suggested protocol to follow?",
        "response": "a. Licensed dispensers are required to report data to MAPS and if the licensee’s IT system is down or they have no internet connection, it is advised that the licensed dispenser take note of all reportable actions that have occurred while MAPS is down and input the data into MAPS when normal functionality resumes. b. If MAPS is down or there is an outage of the system, BPL will work with its vendor, Appriss Health, to get the system resumed. Also, through the system audit trail, BPL will make sure that licensed dispensers are not impacted if they are questioned about not reporting to MAPS during the timeframe of a possible outage of MAPS."
        ],
    [
        "id": 30,
        "question": "Can a practitioner request a MAPS report on any individual?",
        "response": "No. Pursuant to MCL 333.7333a MAPS reports can only be requested for individuals who are a bona-fide current patient of the licensed practitioner."
        ],
    [
        "id": 31,
        "question": "Are prescribers and dispensers permitted to print out MAPS reports on each patient?",
        "response": "Yes, throughout the course of standard medical practice, MAPS reports can be printed out for each patient."
        ],
    [
        "id": 32,
        "question": " Are prescribers and dispensers permitted to discuss MAPS report information with patients when relevant or appropriate?",
        "response": "Yes, when relevant, MAPS information can be discussed with the patient. An example of a relevant application would be going over the MAPS data with the patient. Further, pursuant to MCL 333.7333a, patients are not permitted to obtain a copy of their MAPS report."
        ],
    [
        "id": 33,
        "question": "Are prescribers and dispensers permitted to document MAPS findings and information within their notes?",
        "response": "Yes, MAPS users are permitted to document MAPS findings and information within their notes."
        ],
    [
        "id": 34,
        "question": "Can prescribers and dispensers maintain records from MAPS directly in the EHR?",
        "response": "a. Yes. MAPS users can maintain a MAPS report (HTML format) in the EHR or EMR. However, the prescriber or EHR/EMR vendor cannot pull the data from the report and upload the data in a way where the data is combined with other data sets within the EHR/EMR. If a prescriber saves the MAPS report in the EHR/EMR, the prescriber will need to make sure it is saved in a way where the patient or other unauthorized users of the EHR/EMR cannot access the report. b. Please note, prescribers and dispensers are not required to save a copy of the MAPS report, whether electronic or hard copy, as the software system that MAPS operates on also has audit trail capabilities."
        ],
    [
        "id": 35,
        "question": "Can prescribers and dispensers discuss MAPS report information with other physicians treating the patient? Is the answer to the question dependent on if the other physician is listed as a prescriber on the MAPS report that was run?",
        "response": "BPL cannot advise on federal privacy protections that may apply; however, prescribers and dispensers can discuss MAPS report information with other physicians treating the patient during the normal course of coordinating care for the patient."
        ],
    [
        "id": 36,
        "question": "If a practitioner requests a MAPS report and detects possible illegal activity, can the practitioner give the MAPS report to a law enforcement agency?",
        "response": "No, however the practitioner can notify law enforcement and law enforcement could then open a bona-fide drug related investigation and request a MAPS report for the specific case through BPL."
        ],
    [
        "id": 37,
        "question": "Will the Department be providing health registrants and licensees who treat a patient for an opioid-related overdose, with suggested resources for providing the patient with information on substance use disorder services?",
        "response": "Health professionals are encouraged to visit the DHHS website that provides resources for providers: www.michigan.gov/stopoverdoses. This site contains information related to treatment resources, including a list of treatment programs compiled for each county in the state."
        ],
    [
        "id": 38,
        "question": "Are there new requirements that exist for practitioners treating patients with acute pain? How is acute pain defined in the new law?",
        "response": "a. Yes. Starting on July 1, 2018, if a licensed prescriber is treating a patient for acute pain, the prescriber shall not prescribe more than a 7-day supply of an opioid within a 7-day period. b. Public Act 251 of 2017 defines acute pain as pain that is the normal, predicted physiological response to a noxious chemical or mechanical stimulus and is typically associated with invasive procedures, trauma, and disease, and usually lasts for a limited amount of time.c. This law does not apply to chronic pain."
        ],
    [
        "id": 39,
        "question": "With regard to the new requirements for treating acute pain, a majority of surgeries will only require a patient to be prescribed up to a 7-day supply of opioids. However, does the 7-day requirement apply to larger, and more complex surgeries, which may result in a patient needing more than a 7-day supply of opioids?",
        "response": "In instances involving major surgery, providers should review the definition of acute pain, and the patient’s prognosis, and determine whether circumstances justify prescribing beyond a seven-day supply."
        ],
    [
        "id": 40,
        "question": "Does the 7-day supply of an opioid for acute pain apply to Veterinarian Medicine?",
        "response": "No, this law only applies to patients that are human."
        ],
    [
        "id": 41,
        "question": "Are practitioners dispensing or prescribing buprenorphine or a drug containing buprenorphine or methadone subject to MAPS requirements?",
        "response": "Beginning March 27, 2018, before dispensing or prescribing buprenorphine, or a drug containing buprenorphine or methadone, to a patient in a substance use disorder program, a prescriber shall obtain and review a MAPS report concerning that patient."
        ],
    [
        "id": 42,
        "question": "Is Michigan’s Medicaid population eligible for medically necessary treatment for opioid use disorders?",
        "response": "Public Act 253 of 2017 codifies within Michigan’s Social Welfare Act, that eligible Medicaid individuals may receive medically necessary acute medical detoxification for opioid use disorders, medically necessary inpatient care at an approved facility, or care in an appropriately licensed substance use disorder residential treatment facility."
        ],
    [
        "id": 43,
        "question": "Is the Prescription Drug and Opioid Abuse Commission (PDOAC) developing educational tools that will help to inform youth of the potential dangers associated with opioids?",
        "response": "a. Yes. By July 1, 2018, the PDOAC is required to develop or adopt for Michigan’s Department of Education (MDE), recommendations for the instruction of pupils regarding the dangers of prescription opioid drug abuse. b. No later than July 1, 2019, MDE shall make available to school districts the model program of instruction on the dangers of prescription opioid drug abuse, developed or adopted by the PDOAC. Beginning in the 2019-2020 school year, the MDE shall ensure that the state model of academic standards for health education includes instruction on prescription opioid drug abuse, including at least the recommendations made by the PDOAC. c. These recommendations are also being developed with the support and assistance of DHHS."
        ]
    ]
    

}
