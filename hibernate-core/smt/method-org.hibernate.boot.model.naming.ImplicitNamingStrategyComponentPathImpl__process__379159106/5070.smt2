(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3337 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/1321777772 (var1489) String)
(declare-fun cast-from-var3337-to-var1489 (var3337) var1489)
(declare-fun getParent/-1829283033 (var3337) var3337)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3337 var3337)
(declare-const null-String String)
(declare-const var726 var3337) ; Statement: r0 := @parameter0: org.hibernate.boot.model.source.spi.AttributePath 
(assert (not (= var726 null-var3337)))
(declare-const var3319 String) ; Statement: r3 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3319 null-String)))
(assert true)
(define-const var3292 String (getProperty/1321777772 (cast-from-var3337-to-var1489 var726))) ; Statement: r7 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: java.lang.String getProperty()>() 
(assert true)
(define-const var3048 var3337 (getParent/-1829283033 var726)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath getParent()>() 
 ; Statement: if r1 == null goto $r2 = "_identifierMapper" 
(assert (= var3048 null-var3337)) ; Cond: r1 == null 
(define-const var3060 String "_identifierMapper") ; Statement: $r2 = "_identifierMapper" 
(assert true)
(define-const var2914 Bool (= var3060 var3292)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "") 
(assert (= (ite var2914 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var423 String (replace/2138489945 var3292 (cast-from-String-to-String "<") (cast-from-String-to-String ""))) ; Statement: $r5 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "") 
(assert true)
(define-const var3694 String (replace/2138489945 var423 (cast-from-String-to-String ">") (cast-from-String-to-String ""))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(">", "") 
(assert true)
;(assert (append/672562846 var3319 var3694)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3319!1 String)
(assert (= var3319!1 (str.++ var3319 var3694)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/1321777772=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var3337-to-var1489=([org.hibernate.boot.model.source.spi.AttributePath], org.hibernate.boot.model.source.spi.AbstractAttributeKey), getParent/-1829283033=([org.hibernate.boot.model.source.spi.AttributePath], org.hibernate.boot.model.source.spi.AttributePath), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3337=org.hibernate.boot.model.source.spi.AttributePath, var726=r0, var3319=r3, var1489=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3292=r7, var3048=r1, var3060=$r2, var2914=$z0, var423=$r5, var3694=$r6}
; {org.hibernate.boot.model.source.spi.AttributePath=var3337, r0=var726, r3=var3319, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var1489, r7=var3292, r1=var3048, $r2=var3060, $z0=var2914, $r5=var423, $r6=var3694}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.model.source.spi.AttributePath;	r3 := @parameter1: java.lang.StringBuilder;	r7 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: java.lang.String getProperty()>();	r1 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath getParent()>();	if r1 == null goto $r2 = "_identifierMapper";	$r2 = "_identifierMapper";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "");	$r5 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "");	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(">", "");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	return
;block_num 3