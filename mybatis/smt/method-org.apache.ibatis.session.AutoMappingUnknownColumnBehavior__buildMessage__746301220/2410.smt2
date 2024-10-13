(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2902 0)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getId/-2022694909 (var2902) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2902 var2902)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2780 var2902) ; Statement: r1 := @parameter0: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var2780 null-var2902)))
(declare-const var372 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var372 null-String)))
(declare-const var2619 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2619 null-String)))
(declare-const var3060 ClassObject) ; Statement: r14 := @parameter3: java.lang.Class 
(assert (not (= var3060 null-ClassObject)))
(define-const var3403 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3403 "Unknown column is detected on \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unknown column is detected on \'") 
(declare-const var3403!1 String)
(assert (= var3403!1 "Unknown column is detected on \u0027"))
(assert true)
(define-const var743 String (getId/-2022694909 var2780)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(assert true)
(define-const var853 String (append/672562846 var3403!1 var743)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3403!2 String)
(assert (= var3403!2 (str.++ var3403!1 var743)))
(assert true)
(define-const var2465 String (append/672562846 var853 "\u0027 auto-mapping. Mapping parameters are ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' auto-mapping. Mapping parameters are ") 
(declare-const var853!1 String)
(assert (= var853!1 (str.++ var853 "\u0027 auto-mapping. Mapping parameters are ")))
(assert true)
(define-const var2126 String (append/672562846 var2465 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2465!1 String)
(assert (= var2465!1 (str.++ var2465 "[")))
(assert true)
(define-const var1476 String (append/672562846 var2126 "columnName=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columnName=") 
(declare-const var2126!1 String)
(assert (= var2126!1 (str.++ var2126 "columnName=")))
(assert true)
(define-const var3341 String (append/672562846 var1476 var372)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1476!1 String)
(assert (= var1476!1 (str.++ var1476 var372)))
(assert true)
(define-const var3228 String (append/672562846 var3341 ",")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3341!1 String)
(assert (= var3341!1 (str.++ var3341 ",")))
(assert true)
(define-const var2109 String (append/672562846 var3228 "propertyName=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyName=") 
(declare-const var3228!1 String)
(assert (= var3228!1 (str.++ var3228 "propertyName=")))
(assert true)
(define-const var1753 String (append/672562846 var2109 var2619)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2109!1 String)
(assert (= var2109!1 (str.++ var2109 var2619)))
(assert true)
(define-const var1697 String (append/672562846 var1753 ",")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1753!1 String)
(assert (= var1753!1 (str.++ var1753 ",")))
(assert true)
(define-const var2763 String (append/672562846 var1697 "propertyType=")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyType=") 
(declare-const var1697!1 String)
(assert (= var1697!1 (str.++ var1697 "propertyType=")))
 ; Statement: if r14 == null goto $r19 = null 
(assert (= var3060 null-ClassObject)) ; Cond: r14 == null 
(define-const var2034 String null-String) ; Statement: $r19 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var1788 String (append/672562846 var2763 var2034)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2763!1 String)
(assert (= var2763!1 (str.++ var2763 var2034)))
(assert true)
(define-const var2269 String (append/672562846 var1788 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1788!1 String)
(assert (= var1788!1 (str.++ var1788 "]")))
(assert true)
(define-const var1868 String (toString/-2075883882 var2269)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getId/-2022694909=([org.apache.ibatis.mapping.MappedStatement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2902=org.apache.ibatis.mapping.MappedStatement, var2780=r1, var372=r6, var745=null_type, var2619=r10, var3060=r14, var3403=$r0, var743=$r2, var853=$r3, var2465=$r4, var2126=$r5, var1476=$r7, var3341=$r8, var3228=$r9, var2109=$r11, var1753=$r12, var1697=$r13, var2763=$r15, var2034=$r19, var1788=$r16, var2269=$r17, var1868=$r18}
; {org.apache.ibatis.mapping.MappedStatement=var2902, r1=var2780, r6=var372, null_type=var745, r10=var2619, r14=var3060, $r0=var3403, $r2=var743, $r3=var853, $r4=var2465, $r5=var2126, $r7=var1476, $r8=var3341, $r9=var3228, $r11=var2109, $r12=var1753, $r13=var1697, $r15=var2763, $r19=var2034, $r16=var1788, $r17=var2269, $r18=var1868}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.mapping.MappedStatement;	r6 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r14 := @parameter3: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unknown column is detected on \'");	$r2 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' auto-mapping. Mapping parameters are ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columnName=");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyName=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyType=");	if r14 == null goto $r19 = null;	$r19 = null;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 3