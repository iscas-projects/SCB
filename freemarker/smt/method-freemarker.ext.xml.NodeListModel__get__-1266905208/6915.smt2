(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3089 0)
(declare-sort var3883 0)
(declare-sort var929 0)
(declare-sort var481 0)
(declare-sort var1679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun navigator/1014398653 (var3089) var929)
(declare-fun getOperator/-1496486429 (var929 String) var481)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun nodes/1014398653 (var3089) var1679)
(declare-fun var3089_removeDuplicates/298461676 (var1679) var1679)
(declare-fun deriveModel/1780188989 (var3089 var1679) var3089)
(declare-const null-var3089 var3089)
(declare-const null-String String)
(declare-const null-var481 var481)
(declare-const var2674 var3089) ; Statement: r0 := @this: freemarker.ext.xml.NodeListModel 
(assert (not (= var2674 null-var3089)))
(declare-const var1974 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1974 null-String)))
(define-const var2444 var929 (navigator/1014398653 var2674)) ; Statement: $r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator> 
(assert true)
(define-const var215 var481 (getOperator/-1496486429 var2444 var1974)) ; Statement: r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1) 
(define-const var2474 String null-String) ; Statement: r26 = null 
(define-const var1400 String "") ; Statement: r27 = "" 
 ; Statement: if r25 != null goto (branch) 
(assert (not (not (= var215 null-var481)))) ; Negate: Cond: r25 != null  
(assert true)
(define-const var2859 Int (length/-134980193 var1974)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 <= 0 goto (branch) 
(assert (not (<= var2859 0))) ; Negate: Cond: $i2 <= 0  
(assert (and true (and (> (str.len var1974) 0) (<= 0 0))))
(define-const var285 Int (charAt/698050440 var1974 0)) ; Statement: $c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var3364 Int (cast-from-Int-to-Int var285)) ; Statement: $i5 = (int) $c3 
 ; Statement: if $i5 != 95 goto (branch) 
(assert (not (not (= var3364 95)))) ; Negate: Cond: $i5 != 95  
(assert true)
(define-const var904 Bool (= var1974 "_unique")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("_unique") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("_filterType") 
(assert (not (= (ite var904 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2944 var1679 (nodes/1014398653 var2674)) ; Statement: $r20 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes> 
(define-const var2760 var1679 (var3089_removeDuplicates/298461676 var2944)) ; Statement: $r21 = staticinvoke <freemarker.ext.xml.NodeListModel: java.util.List removeDuplicates(java.util.List)>($r20) 
(assert true)
(define-const var3519 var3089 (deriveModel/1780188989 var2674 var2760)) ; Statement: $r22 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r21) 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {navigator/1014398653=([freemarker.ext.xml.NodeListModel], freemarker.ext.xml.Navigator), getOperator/-1496486429=([freemarker.ext.xml.Navigator, java.lang.String], freemarker.ext.xml.NodeOperator), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), nodes/1014398653=([freemarker.ext.xml.NodeListModel], java.util.List), var3089_removeDuplicates/298461676=([java.util.List], java.util.List), deriveModel/1780188989=([freemarker.ext.xml.NodeListModel, java.util.List], freemarker.ext.xml.NodeListModel)}
; {var3089=freemarker.ext.xml.NodeListModel, var2674=r0, var1974=r1, var3883=null_type, var929=freemarker.ext.xml.Navigator, var2444=$r2, var481=freemarker.ext.xml.NodeOperator, var215=r25, var2474=r26, var1400=r27, var2859=$i2, var285=$c3, var3364=$i5, var904=$z0, var1679=java.util.List, var2944=$r20, var2760=$r21, var3519=$r22}
; {freemarker.ext.xml.NodeListModel=var3089, r0=var2674, r1=var1974, null_type=var3883, freemarker.ext.xml.Navigator=var929, $r2=var2444, freemarker.ext.xml.NodeOperator=var481, r25=var215, r26=var2474, r27=var1400, $i2=var2859, $c3=var285, $i5=var3364, $z0=var904, java.util.List=var1679, $r20=var2944, $r21=var2760, $r22=var3519}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.ext.xml.NodeListModel;	r1 := @parameter0: java.lang.String;	$r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator>;	r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1);	r26 = null;	r27 = "";	if r25 != null goto (branch);	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i2 <= 0 goto (branch);	$c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i5 = (int) $c3;	if $i5 != 95 goto (branch);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("_unique");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("_filterType");	$r20 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes>;	$r21 = staticinvoke <freemarker.ext.xml.NodeListModel: java.util.List removeDuplicates(java.util.List)>($r20);	$r22 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r21);	return $r22
;block_num 5