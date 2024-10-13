(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var982 0)
(declare-sort var2506 0)
(declare-sort var3743 0)
(declare-sort var2787 0)
(declare-sort var364 0)
(declare-sort var1748 0)
(declare-sort var1864 0)
(declare-sort var519 0)
(declare-sort var322 0)
(declare-sort var1882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1612451176 (var2787 var2506 var3743) void)
(declare-fun cast-from-var982-to-var2787 (var982) var2787)
(declare-fun var364-init () var364)
(declare-fun <init>/-325640736 (var364) void)
(declare-fun cast-from-var364-to-var1748 (var364) var1748)
(declare-fun bannedTagAttrs/-1981652996 (var982) var1748)
(declare-fun getValueList/951915007 (var3743) var1864)
(declare-fun var1748_iterator/-912451715 (var1748) Iterator)
(declare-fun cast-from-var1864-to-var1748 (var1864) var1748)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1748_isEmpty/-153543822 (var1748) Bool)
(declare-fun getTypeRegistry/-1447566144 (var2506) var519)
(declare-fun getGlobalType/-979037706 (var519 String) var322)
(declare-fun domHelperType/-1981652996 (var982) var322)
(declare-fun arr-var322-init () (Array Int var322))
(declare-fun getNativeType/1610976927 (var519 var1882) var322)
(declare-fun createUnionType/-653223696 (var519 (Array Int var322)) var322)
(declare-fun classNameTypes/-1981652996 (var982) var322)
(declare-const null-var982 var982)
(declare-const null-var2506 var2506)
(declare-const null-var3743 var3743)
(declare-const var1882-STRING_TYPE var1882)
(declare-const null-__Array__Int__var322__ (Array Int var322))
(declare-const var1882-ARRAY_TYPE var1882)
(declare-const var1882-NULL_TYPE var1882)
(declare-const var1882-VOID_TYPE var1882)
(declare-const var3765 var982) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom 
(assert (not (= var3765 null-var982)))
(declare-const var2644 var2506) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var2644 null-var2506)))
(declare-const var3595 var3743) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.Requirement 
(assert (not (= var3595 null-var3743)))
(assert true)
;(assert (<init>/-1612451176 (cast-from-var982-to-var2787 var3765) var2644 var3595)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: void <init>(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.Requirement)>(r1, r2) 

(declare-const var3765!1 var982)
(declare-const var2644!1 var2506)
(declare-const var3595!1 var3743)
(define-const var422 var364 var364-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var422)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var422!1 var364)
(declare-const var3765!2 var982)
(assert (not (= var3765!2 null-var982)))
(assert (= (bannedTagAttrs/-1981652996 var3765!2) (cast-from-var364-to-var1748 var422!1))) ; Statement: r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> = $r3 
(assert true)
(define-const var2197 var1864 (getValueList/951915007 var3595!1)) ; Statement: $r4 = virtualinvoke r2.<com.google.javascript.jscomp.Requirement: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList getValueList()>() 
(define-const var2887 Iterator (var1748_iterator/-912451715 (cast-from-var1864-to-var1748 var2197))) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var928 Bool (Iterator_hasNext/-1669924200 var2887)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> 
(assert (= (ite var928 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2450 var1748 (bannedTagAttrs/-1981652996 var3765!2)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> 
(define-const var265 Bool (var1748_isEmpty/-153543822 var2450)) ; Statement: $z1 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(assert (= (ite var265 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3489 var519 (getTypeRegistry/-1447566144 var2644!1)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(assert true)
(define-const var1644 var322 (getGlobalType/-979037706 var3489 "goog.dom.DomHelper")) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getGlobalType(java.lang.String)>("goog.dom.DomHelper") 
(declare-const var3765!3 var982)
(assert (not (= var3765!3 null-var982)))
(assert (= (domHelperType/-1981652996 var3765!3) var1644)) ; Statement: r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: com.google.javascript.rhino.jstype.JSType domHelperType> = $r8 
(assert true)
(define-const var2684 var519 (getTypeRegistry/-1447566144 var2644!1)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(define-const var1944 (Array Int var322) arr-var322-init) ; Statement: $r9 = newarray (com.google.javascript.rhino.jstype.JSType)[4] 
(assert true)
(define-const var1333 var519 (getTypeRegistry/-1447566144 var2644!1)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(define-const var2164 var1882 var1882-STRING_TYPE) ; Statement: $r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE> 
(assert true)
(define-const var475 var322 (getNativeType/1610976927 var1333 var2164)) ; Statement: $r12 = virtualinvoke $r11.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r10) 
(declare-const var1944!1 (Array Int var322))
(assert (not (= var1944!1 null-__Array__Int__var322__)))
(assert (= (select var1944!1 0) var475)) ; Statement: $r9[0] = $r12 
(assert true)
(define-const var3551 var519 (getTypeRegistry/-1447566144 var2644!1)) ; Statement: $r14 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(define-const var2624 var1882 var1882-ARRAY_TYPE) ; Statement: $r13 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative ARRAY_TYPE> 
(assert true)
(define-const var951 var322 (getNativeType/1610976927 var3551 var2624)) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r13) 
(declare-const var1944!2 (Array Int var322))
(assert (not (= var1944!2 null-__Array__Int__var322__)))
(assert (= (select var1944!2 1) var951)) ; Statement: $r9[1] = $r15 
(assert true)
(define-const var3006 var519 (getTypeRegistry/-1447566144 var2644!1)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(define-const var2680 var1882 var1882-NULL_TYPE) ; Statement: $r16 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NULL_TYPE> 
(assert true)
(define-const var857 var322 (getNativeType/1610976927 var3006 var2680)) ; Statement: $r18 = virtualinvoke $r17.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r16) 
(declare-const var1944!3 (Array Int var322))
(assert (not (= var1944!3 null-__Array__Int__var322__)))
(assert (= (select var1944!3 2) var857)) ; Statement: $r9[2] = $r18 
(assert true)
(define-const var3499 var519 (getTypeRegistry/-1447566144 var2644!1)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(define-const var2464 var1882 var1882-VOID_TYPE) ; Statement: $r19 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE> 
(assert true)
(define-const var1045 var322 (getNativeType/1610976927 var3499 var2464)) ; Statement: $r21 = virtualinvoke $r20.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r19) 
(declare-const var1944!4 (Array Int var322))
(assert (not (= var1944!4 null-__Array__Int__var322__)))
(assert (= (select var1944!4 3) var1045)) ; Statement: $r9[3] = $r21 
(assert true)
(define-const var2245 var322 (createUnionType/-653223696 var2684 var1944!4)) ; Statement: $r23 = virtualinvoke $r22.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType createUnionType(com.google.javascript.rhino.jstype.JSType[])>($r9) 
(declare-const var3765!4 var982)
(assert (not (= var3765!4 null-var982)))
(assert (= (classNameTypes/-1981652996 var3765!4) var2245)) ; Statement: r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: com.google.javascript.rhino.jstype.JSType classNameTypes> = $r23 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1612451176=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.Requirement], void), cast-from-var982-to-var2787=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], com.google.javascript.jscomp.ConformanceRules$AbstractRule), var364-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var364-to-var1748=([java.util.ArrayList], java.util.List), bannedTagAttrs/-1981652996=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], java.util.List), getValueList/951915007=([com.google.javascript.jscomp.Requirement], com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList), var1748_iterator/-912451715=([java.util.List], java.util.Iterator), cast-from-var1864-to-var1748=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList], java.util.List), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1748_isEmpty/-153543822=([java.util.List], boolean), getTypeRegistry/-1447566144=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.rhino.jstype.JSTypeRegistry), getGlobalType/-979037706=([com.google.javascript.rhino.jstype.JSTypeRegistry, java.lang.String], com.google.javascript.rhino.jstype.JSType), domHelperType/-1981652996=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], com.google.javascript.rhino.jstype.JSType), arr-var322-init=([], com.google.javascript.rhino.jstype.JSType[]), getNativeType/1610976927=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSTypeNative], com.google.javascript.rhino.jstype.JSType), createUnionType/-653223696=([com.google.javascript.rhino.jstype.JSTypeRegistry, com.google.javascript.rhino.jstype.JSType[]], com.google.javascript.rhino.jstype.JSType), classNameTypes/-1981652996=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], com.google.javascript.rhino.jstype.JSType)}
; {var982=com.google.javascript.jscomp.ConformanceRules$BanCreateDom, var3765=r0, var2506=com.google.javascript.jscomp.AbstractCompiler, var2644=r1, var3743=com.google.javascript.jscomp.Requirement, var3595=r2, var2787=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var364=java.util.ArrayList, var422=$r3, var1748=java.util.List, var1864=com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList, var2197=$r4, var2887=r5, var928=$z0, var2450=$r6, var265=$z1, var519=com.google.javascript.rhino.jstype.JSTypeRegistry, var3489=$r7, var322=com.google.javascript.rhino.jstype.JSType, var1644=$r8, var2684=$r22, var1944=$r9, var1333=$r11, var1882=com.google.javascript.rhino.jstype.JSTypeNative, var2164=$r10, var475=$r12, var3551=$r14, var2624=$r13, var951=$r15, var3006=$r17, var2680=$r16, var857=$r18, var3499=$r20, var2464=$r19, var1045=$r21, var2245=$r23}
; {com.google.javascript.jscomp.ConformanceRules$BanCreateDom=var982, r0=var3765, com.google.javascript.jscomp.AbstractCompiler=var2506, r1=var2644, com.google.javascript.jscomp.Requirement=var3743, r2=var3595, com.google.javascript.jscomp.ConformanceRules$AbstractRule=var2787, java.util.ArrayList=var364, $r3=var422, java.util.List=var1748, com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList=var1864, $r4=var2197, r5=var2887, $z0=var928, $r6=var2450, $z1=var265, com.google.javascript.rhino.jstype.JSTypeRegistry=var519, $r7=var3489, com.google.javascript.rhino.jstype.JSType=var322, $r8=var1644, $r22=var2684, $r9=var1944, $r11=var1333, com.google.javascript.rhino.jstype.JSTypeNative=var1882, $r10=var2164, $r12=var475, $r14=var3551, $r13=var2624, $r15=var951, $r17=var3006, $r16=var2680, $r18=var857, $r20=var3499, $r19=var2464, $r21=var1045, $r23=var2245}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom;	r1 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r2 := @parameter1: com.google.javascript.jscomp.Requirement;	specialinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: void <init>(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.Requirement)>(r1, r2);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> = $r3;	$r4 = virtualinvoke r2.<com.google.javascript.jscomp.Requirement: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList getValueList()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs>;	$r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs>;	$z1 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r8 = virtualinvoke $r7.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getGlobalType(java.lang.String)>("goog.dom.DomHelper");	r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: com.google.javascript.rhino.jstype.JSType domHelperType> = $r8;	$r22 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r9 = newarray (com.google.javascript.rhino.jstype.JSType)[4];	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r10 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative STRING_TYPE>;	$r12 = virtualinvoke $r11.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r10);	$r9[0] = $r12;	$r14 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r13 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative ARRAY_TYPE>;	$r15 = virtualinvoke $r14.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r13);	$r9[1] = $r15;	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r16 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative NULL_TYPE>;	$r18 = virtualinvoke $r17.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r16);	$r9[2] = $r18;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r19 = <com.google.javascript.rhino.jstype.JSTypeNative: com.google.javascript.rhino.jstype.JSTypeNative VOID_TYPE>;	$r21 = virtualinvoke $r20.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType getNativeType(com.google.javascript.rhino.jstype.JSTypeNative)>($r19);	$r9[3] = $r21;	$r23 = virtualinvoke $r22.<com.google.javascript.rhino.jstype.JSTypeRegistry: com.google.javascript.rhino.jstype.JSType createUnionType(com.google.javascript.rhino.jstype.JSType[])>($r9);	r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: com.google.javascript.rhino.jstype.JSType classNameTypes> = $r23;	return
;block_num 4