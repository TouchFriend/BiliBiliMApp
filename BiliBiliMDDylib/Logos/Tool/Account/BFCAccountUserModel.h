//
//  BFCAccountUserModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

@interface BFCAccountUserModelVip : NSObject
@property (nonatomic) long long type;
@property (nonatomic) long long status;
@property (nonatomic) long long dueDate;
@property (nonatomic) int vipPayType;
@property (nonatomic) long long themeType;
@property (nonatomic) int avatarSubscript;
@property (copy, nonatomic) NSString *nicknameColor;
//@property (retain, nonatomic) BFCAccountUserModelVipLabel *label;
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;

/* class methods */
+ (id)modelCustomPropertyMapper;
+ (id)modelContainerPropertyGenericClass;

/* instance methods */
- (id)statusWarning;
- (_Bool)isValidVip;
- (_Bool)isValidYearVip;
- (_Bool)isValidMonthVip;

@end


/// 用户信息
@interface BFCAccountUserModel : NSObject

@property (nonatomic) long long mid;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *face;
@property (nonatomic) long long faceNFT;
@property (nonatomic) _Bool hasFaceNFT;
@property (copy, nonatomic) NSString *sign;
@property (nonatomic) double coins;
@property (copy, nonatomic) NSString *birthday;
@property (nonatomic) long long sex;
@property (nonatomic) int level;
@property (nonatomic) int rank;
@property (nonatomic) long long answerStatus;
@property (nonatomic) int identification;
@property (nonatomic) int silence;
@property (nonatomic) long long endTime;
@property (retain, nonatomic) BFCAccountUserModelVip *vip;
@property (nonatomic) long long emailStatus;
@property (nonatomic) long long telStatus;
//@property (retain, nonatomic) BFCAccountUserModelOfficial *official;
//@property (retain, nonatomic) BFCAccountUserModelPendant *pendant;
//@property (retain, nonatomic) BFCAccountUserModelInvite *invite;
//@property (retain, nonatomic) BFCAccountUserModelAnswerContent *answerContent;
@property (nonatomic) int isTourist;
@property (nonatomic) int pinPrompting;
@property (nonatomic) _Bool isJury;
@property (nonatomic) long long isSeniorMember;
@property (nonatomic) _Bool isSetBirthday;
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;

/* class methods */
+ (id)modelCustomPropertyMapper;
+ (id)modelContainerPropertyGenericClass;

/* instance methods */
- (_Bool)basicIsEqual:(id)equal;
- (_Bool)vipIsEqual:(id)equal;
- (_Bool)officialIsEqual:(id)equal;
- (_Bool)levelIsEqual:(id)equal;
- (_Bool)otherIsEqual:(id)equal;

@end
