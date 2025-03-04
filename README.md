<div align="center">

<!-- logo -->
<img src="https://user-images.githubusercontent.com/80824750/208554611-f8277015-12e8-48d2-b2cc-d09d67f03c02.png" width="400"/>
<br/>

[<img src="https://img.shields.io/badge/-readme.md-important?style=flat&logo=google-chrome&logoColor=white" />]() [<img src="https://img.shields.io/badge/release-v0.0.0-yellow?style=flat&logo=google-chrome&logoColor=white" />]() 
<br/> [<img src="https://img.shields.io/badge/프로젝트 기간-2024.03~2024.11-green?style=flat&logo=&logoColor=white" />]()

</div> 

<br/>
# 0. Related Repository (연관 레포지토리)
**FlaskServer**
https://github.com/Nevita-INU/Capstone_flask.git
**YOLO**
https://github.com/Nevita-INU/helmet_project_YOLO.git
# 1. Project Overview (프로젝트 개요)
- 프로젝트 이름: Nevita
- 프로젝트 설명: 스마트 IoT 센서와 YOLOv8을 활용한 헬멧 착용 여부 확인 전동 킥보드 웹 서비스
  
### 기획 의도

#### - 헬멧 착용 독려 및 안전성 강화
전동 킥보드 사용자들의 안전을 위해 헬멧 착용을 독려하고자 스마트 헬멧과 웹 서비스를 개발하였다. 헬멧 미착용으로 인한 사고와 이용자의 불편을 줄이며, 공유 킥보드 업체의 이용자 감소 문제를 해결하고자 한다.

#### - 이중 인증 시스템 도입
헬멧 착용 여부를 판단하기 위해 **적외선 근접 센서**를 활용한 방식과 **YOLOv8 기반 객체 감지 모델**을 이용한 방법이 있다. 하지만 각 방식을 단독으로 사용할 경우 문제점이 발생할 수 있다.

1. **적외선 근접 센서 방식**  
   - 사용자가 헬멧을 머리가 아닌 다른 부위에 접촉할 가능성이 있음  
   - 날씨나 온도 변화에 의한 오류 발생 가능  
   - 기기 파손으로 인해 센서의 정확도가 저하될 위험  

2. **YOLOv8 기반 객체 감지 모델 방식**  
   - 사진 인증 후 사용자가 헬멧을 벗을 가능성이 존재  
   - 인증 후 실시간 착용 여부를 감지하지 못하는 한계  

이러한 단점을 보완하기 위해 **적외선 근접 센서와 YOLOv8 기반 객체 감지 모델을 결합한 이중 인증 시스템**을 도입하였다.  
1차 인증으로 적외선 근접 센서를 사용하여 착용 여부를 감지하고, 2차 인증으로 웹 사이트에 사용자의 헬멧 착용 사진을 업로드하여 헬멧 착용을 추가로 확인하는 방식이다.  
이 두 가지 인증 방식을 함께 활용함으로써 착용 여부를 보다 정확하고 철저하게 확인할 수 있으며, 전동 킥보드 사용자들이 더욱 안전하게 이용할 수 있는 환경을 제공한다.

---

### 프로젝트 내용

#### - 헬멧 착용 관리 기능
1. 헬멧 내 **적외선 근접 센서**가 **1차적으로 헬멧 착용 여부**를 확인  
2. 사용자가 헬멧 착용 이미지를 **웹 서비스에 업로드**하면 **YOLOv8 기반 객체 감지 모델**을 통해 **2차로 헬멧 착용 여부**를 확인  
3. **헬멧 미착용 시 전동 킥보드 운행 제한** → 안전성 강화  
4. **헬멧 착용 시 LED와 스피커 모듈이 활성화** → 착용 및 해제 상태를 사용자에게 안내  

#### - YOLOv8 기반 객체 감지 모델
- 헬멧 착용 여부를 판별하기 위해 **YOLOv8 기반 객체 감지 모델**을 사용  
- **‘helmet’과 ‘no_helmet’** 두 가지 클래스로 구분하여 학습 진행  
- **헬멧 착용 시 0, 미착용 시 1로 라벨링**하여 데이터셋 구축 후 모델 학습  
- 사용자가 업로드한 이미지를 **YOLOv8을 통해 분석**, 빠르고 정확하게 헬멧 착용 여부 검증  
- 안전성을 강화하기 위한 **2차 인증 수단**으로 활용  

#### - 웹 서비스 기능
- 헬멧 착용 여부 검증 과정에서 **적외선 근접 센서와 YOLOv8 기반 객체 감지 모델을 통합**하여 사용자 안전성을 강화  
- **적외선 근접 센서로 1차 착용 여부 감지 → MySQL DB 저장**  
- 사용자가 **웹 페이지에 헬멧 착용 사진 업로드 → Flask 서버에서 YOLOv8 모델 분석 → 2차 인증 수행**  
- **1차 및 2차 인증 완료 시 운행 시작 페이지로 이동 가능**  
- **인증 실패 시 다음 페이지로 이동 불가**  

<br/>
<br/>

# 2. Team Members (팀원 및 팀 소개)
<table>
  <tr>
    <td align="center">
      <a href="https://github.com/ijnim1121">
        <img src="https://github.com/ijnim1121.png?size=100" width="100px;" alt="김지민"/>
        <br />
        <sub><b>김지민</b></sub>
      </a>
</td>
<td align="center">
      <a href="https://github.com/SRASONY">
        <img src="https://github.com/SRASONY.png?size=100" width="100px;" alt="이슬아"/>
        <br />
        <sub><b>이슬아</b></sub>
      </a>
</td>
<td align="center">
      <a href="https://github.com/minjichoii">
        <img src="https://github.com/minjichoii.png?size=100" width="100px;" alt="최민지"/>
        <br />
        <sub><b>최민지</b></sub>
      </a>
</td>
<td align="center">
      <a href="https://github.com/psm1604">
        <img src="https://github.com/psm1604.png?size=100" width="100px;" alt="박상미"/>
        <br />
        <sub><b>박상미</b></sub>
      </a>
</td>

  </tr>
  <tr>
    <td align="center">BE</td>
    <td align="center">BE</td>
    <td align="center">DL</td>
    <td align="center">DL</td>
  </tr>
</table>

<br/>

# 3. Key Features (주요 기능)
| 구분  | 기능 | 설명 |
|------|------|------|
| **S/W** | **헬멧 착용 감지를 위한 학습 모델 (Yolov8)** | 'helmet', 'no_helmet' 두 가지의 클래스를 학습하여 사용자가 사진을 업로드 했을 때 헬멧을 착용했는지 확인할 수 있는 모델 생성 |
| | **[1차 인증] 적외선 센서 기반 헬멧 착용 인증** | - 적외선 센서값을 받아 MySQL 데이터베이스 sensor 테이블의 proximity 값에 1이 저장됨<br> - ‘센서 확인하기’ 버튼을 눌러 착용 여부를 확인 가능. 착용 시 (proximity=1) 2차 인증 페이지로 이동, 미착용 시 (proximity=0) 다음 단계로 이동 불가 |
| | **[2차 인증] 딥러닝 기반 헬멧 착용 인증** | - 사용자가 헬멧 착용 사진을 업로드하면 Flask 서버로 이미지 전달<br> - Flask 서버에서 YOLOv8 모델을 통해 사진 분석 후, 헬멧 착용 0, 미착용 시 1의 라벨 값을 반환하여 SpringBoot 웹서버로 전달<br> - 라벨값이 0일 경우 운행 시작 페이지로 이동, 라벨값이 1일 경우 다음 페이지로 이동 불가 |
| **H/W** | **적외선 근접 센서 (TCRT5000)** | - 적외선 센서를 이용해 헬멧 착용/해제 여부 감지<br> - 2cm 내의 장애물을 감지하므로 헬멧 착용 여부 확인에 적합 |
| | **피에조 스피커 모듈** | 근접센서를 통해 헬멧 착용/해제 인식 시 스피커 모듈로 멜로디 출력 |


<br/>
<br/>

# 4. Work Schematic & Motion Process (작품 구성도 및 동작 프로세스)
### 작품 구성도
<img width="562" alt="Image" src="https://github.com/user-attachments/assets/b98f2e0b-e658-40f5-ac7f-a07c0db11c32" />

### 동작 프로세스
<img width="562" alt="Image" src="https://github.com/user-attachments/assets/a19327e6-cf65-4566-89a6-80876e760f73" />

‘Nevita’ 메인 페이지에서 ‘인증하고 운행 시작하기’ 버튼을 클릭한다. ‘sensorCheck’ 페이지로 넘어가면 ‘센서 확인’ 과 ‘사진 업로드’ 버튼을 확인할 수 있는데, 센서 확인 버튼을 클릭하면 헬멧의 센서가 착용을 인식하고 데이터베이스에 착용했음을 전송한다. 이 정보는 데이터베이스에서 가져와 확인되며, 헬멧 착용(proximity=1)이 확인되면 2차 인증 페이지로 이동할 수 있다.
2차 인증 페이지에서 사진 업로드 버튼을 클릭하여 헬멧을 착용한 사진을 업로드할 수 있다. 이때, 헬멧 착용 감지를 학습한 모델이 이를 판단한다. class_id=0이며 ‘helmet’ 라벨이 출력되면 헬멧 착용 사진까지 확인이 완료된다.
이러한 2차 인증 진행이 끝나면 ‘운행 시작’ 페이지로 이동할 수 있다.

# 5. Development environment & equipment (개발환경 및 장비)
### 개발 환경

| 구분       | 항목                | 적용 내역                     |
|------------|-------------------|-----------------------------|
| **딥러닝 모델** | OS                 | macOS                      |
|            | 개발환경 (IDE)       | Colab                      |
|            | 개발도구            | 디버거 (오류 확인, 컴파일) |
|            | 개발언어            | Python (학습 코드)        |
| **웹 개발** | OS                 | macOS                      |
|            | 개발환경 (IDE)       | IntelliJ IDEA (웹 애플리케이션 개발 환경 설정) |
|            | 개발도구            | Postman (API 테스트 수행)  |
|            | 개발언어            | Java, JSP, HTML, CSS, Python (서버 로직 구현 및 UI 구성) |

---

### 제작용 장비

| 번호 | 품명               | 작품에서의 주요 기능          |
|------|------------------|---------------------------|
| 1    | 아두이노 우노 보드 | 헬멧 착용 감지 시스템 개발 |
| 2    | 헬멧              | 적외선 근접센서, LED, 스피커 부착 |



<br />


# 6. Project Structure (프로젝트 구조)
## 📁 프로젝트 구조

```bash
Capstone_web
└── src
    ├── main
    │   ├── java
    │   │   └── com.mysite.nevita
    │   │       ├── controller       # 컨트롤러 (Controller)
    │   │       ├── model            # 데이터 모델 (Model)
    │   │       ├── repository       # 데이터 저장소 (Repository)
    │   │       ├── service          # 비즈니스 로직 (Service)
    │   │       └── NevitaApplication  # 메인 애플리케이션 클래스
    │   ├── resources
    │   │   ├── static               # 정적 리소스 (CSS, JS, 이미지 등)
    │   │   └── application.properties  # 애플리케이션 설정 파일
    │   ├── webapp
    │   │   └── WEB-INF
    │   │       ├── views            # JSP 뷰 파일 (프론트엔드 UI)
    │   │       │   ├── about.jsp
    │   │       │   ├── contact.jsp
    │   │       │   ├── index.jsp
    │   │       │   ├── photoUpload.jsp
    │   │       │   ├── sensorCheck.jsp
    └── └──     └── └── success.jsp
```

<br/>
<br/>

# 7. ProtoType (프로토타입)
![Image](https://github.com/user-attachments/assets/bfc7a055-1373-4725-b2da-4d96cdd4b707)

![Image](https://github.com/user-attachments/assets/318e01a2-6337-4510-bebd-396580e4ca27)

![Image](https://github.com/user-attachments/assets/9c62bbd7-fc7e-4286-bf9c-6b1ed2713c47)

![Image](https://github.com/user-attachments/assets/ee97e587-c30a-4e09-bc2a-ce96d6d0a775)


# 8. Result (결과)

<div align="center">
    <img width="319" alt="Image" src="https://github.com/user-attachments/assets/f2936987-b669-496b-b811-95c46a80ad34" />
    <img width="323" alt="Image" src="https://github.com/user-attachments/assets/fe281fe1-7392-45d3-a4de-63db107bc0e1" />
</div>

YOLOv8이 validation을 수행한 결과이다. 사진을 통해 헬멧을 모두 ‘0: helmet’으로 인식하고 있으며, 히잡이나 헬멧 착용을 하지 않은 사진은 모두 ‘1: no_helmet’으로 인식하고 있는 것을 확인할 수 있다.


