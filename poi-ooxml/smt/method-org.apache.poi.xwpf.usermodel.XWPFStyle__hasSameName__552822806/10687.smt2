(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var535 0)
(declare-sort var1880 0)
(declare-sort var3733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCTStyle/118537736 (var535) var1880)
(declare-fun var1880_getName/-1059339944 (var1880) var3733)
(declare-fun var3733_getVal/-1797483099 (var3733) String)
(declare-fun ctStyle/1416657229 (var535) var1880)
(declare-const null-var535 var535)
(declare-const var2872 var535) ; Statement: r4 := @this: org.apache.poi.xwpf.usermodel.XWPFStyle 
(assert (not (= var2872 null-var535)))
(declare-const var1314 var535) ; Statement: r0 := @parameter0: org.apache.poi.xwpf.usermodel.XWPFStyle 
(assert (not (= var1314 null-var535)))
(assert true)
(define-const var187 var1880 (getCTStyle/118537736 var1314)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle getCTStyle()>() 
(define-const var2009 var3733 (var1880_getName/-1059339944 var187)) ; Statement: $r2 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString getName()>() 
(define-const var2605 String (var3733_getVal/-1797483099 var2009)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: java.lang.String getVal()>() 
(define-const var1306 var1880 (ctStyle/1416657229 var2872)) ; Statement: $r5 = r4.<org.apache.poi.xwpf.usermodel.XWPFStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle ctStyle> 
(define-const var1121 var3733 (var1880_getName/-1059339944 var1306)) ; Statement: $r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString getName()>() 
(define-const var2591 String (var3733_getVal/-1797483099 var1121)) ; Statement: $r7 = interfaceinvoke $r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: java.lang.String getVal()>() 
(assert true)
(define-const var537 Bool (= var2605 var2591)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCTStyle/118537736=([org.apache.poi.xwpf.usermodel.XWPFStyle], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle), var1880_getName/-1059339944=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString), var3733_getVal/-1797483099=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString], java.lang.String), ctStyle/1416657229=([org.apache.poi.xwpf.usermodel.XWPFStyle], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle)}
; {var535=org.apache.poi.xwpf.usermodel.XWPFStyle, var2872=r4, var1314=r0, var1880=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle, var187=r1, var3733=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString, var2009=$r2, var2605=r3, var1306=$r5, var1121=$r6, var2591=$r7, var537=$z0}
; {org.apache.poi.xwpf.usermodel.XWPFStyle=var535, r4=var2872, r0=var1314, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle=var1880, r1=var187, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString=var3733, $r2=var2009, r3=var2605, $r5=var1306, $r6=var1121, $r7=var2591, $z0=var537}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: org.apache.poi.xwpf.usermodel.XWPFStyle;	r0 := @parameter0: org.apache.poi.xwpf.usermodel.XWPFStyle;	r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle getCTStyle()>();	$r2 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString getName()>();	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: java.lang.String getVal()>();	$r5 = r4.<org.apache.poi.xwpf.usermodel.XWPFStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle ctStyle>;	$r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString getName()>();	$r7 = interfaceinvoke $r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: java.lang.String getVal()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>($r7);	return $z0
;block_num 1