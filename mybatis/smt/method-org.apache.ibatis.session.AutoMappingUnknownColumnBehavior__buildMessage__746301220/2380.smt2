(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1926 0)
(declare-sort var651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getId/-2022694909 (var1926) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1926 var1926)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1397 var1926) ; Statement: r1 := @parameter0: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var1397 null-var1926)))
(declare-const var501 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var501 null-String)))
(declare-const var1734 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1734 null-String)))
(declare-const var2723 ClassObject) ; Statement: r14 := @parameter3: java.lang.Class 
(assert (not (= var2723 null-ClassObject)))
(define-const var3133 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3133 "Unknown column is detected on \u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unknown column is detected on \'") 
(declare-const var3133!1 String)
(assert (= var3133!1 "Unknown column is detected on \u0027"))
(assert true)
(define-const var3122 String (getId/-2022694909 var1397)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>() 
(assert true)
(define-const var1065 String (append/672562846 var3133!1 var3122)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3133!2 String)
(assert (= var3133!2 (str.++ var3133!1 var3122)))
(assert true)
(define-const var633 String (append/672562846 var1065 "\u0027 auto-mapping. Mapping parameters are ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' auto-mapping. Mapping parameters are ") 
(declare-const var1065!1 String)
(assert (= var1065!1 (str.++ var1065 "\u0027 auto-mapping. Mapping parameters are ")))
(assert true)
(define-const var1510 String (append/672562846 var633 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var633!1 String)
(assert (= var633!1 (str.++ var633 "[")))
(assert true)
(define-const var1843 String (append/672562846 var1510 "columnName=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columnName=") 
(declare-const var1510!1 String)
(assert (= var1510!1 (str.++ var1510 "columnName=")))
(assert true)
(define-const var1173 String (append/672562846 var1843 var501)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1843!1 String)
(assert (= var1843!1 (str.++ var1843 var501)))
(assert true)
(define-const var2701 String (append/672562846 var1173 ",")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1173!1 String)
(assert (= var1173!1 (str.++ var1173 ",")))
(assert true)
(define-const var2745 String (append/672562846 var2701 "propertyName=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyName=") 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 "propertyName=")))
(assert true)
(define-const var1392 String (append/672562846 var2745 var1734)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2745!1 String)
(assert (= var2745!1 (str.++ var2745 var1734)))
(assert true)
(define-const var1341 String (append/672562846 var1392 ",")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1392!1 String)
(assert (= var1392!1 (str.++ var1392 ",")))
(assert true)
(define-const var542 String (append/672562846 var1341 "propertyType=")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyType=") 
(declare-const var1341!1 String)
(assert (= var1341!1 (str.++ var1341 "propertyType=")))
 ; Statement: if r14 == null goto $r19 = null 
(assert (not (= var2723 null-ClassObject))) ; Negate: Cond: r14 == null  
(assert true)
(define-const var3159 String (getName/-1958580599 var2723)) ; Statement: $r19 = virtualinvoke r14.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2865 String (append/672562846 var542 var3159)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var542!1 String)
(assert (= var542!1 (str.++ var542 var3159)))
(assert true)
(define-const var2293 String (append/672562846 var2865 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2865!1 String)
(assert (= var2865!1 (str.++ var2865 "]")))
(assert true)
(define-const var1216 String (toString/-2075883882 var2293)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getId/-2022694909=([org.apache.ibatis.mapping.MappedStatement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1926=org.apache.ibatis.mapping.MappedStatement, var1397=r1, var501=r6, var651=null_type, var1734=r10, var2723=r14, var3133=$r0, var3122=$r2, var1065=$r3, var633=$r4, var1510=$r5, var1843=$r7, var1173=$r8, var2701=$r9, var2745=$r11, var1392=$r12, var1341=$r13, var542=$r15, var3159=$r19, var2865=$r16, var2293=$r17, var1216=$r18}
; {org.apache.ibatis.mapping.MappedStatement=var1926, r1=var1397, r6=var501, null_type=var651, r10=var1734, r14=var2723, $r0=var3133, $r2=var3122, $r3=var1065, $r4=var633, $r5=var1510, $r7=var1843, $r8=var1173, $r9=var2701, $r11=var2745, $r12=var1392, $r13=var1341, $r15=var542, $r19=var3159, $r16=var2865, $r17=var2293, $r18=var1216}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.mapping.MappedStatement;	r6 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r14 := @parameter3: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unknown column is detected on \'");	$r2 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getId()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' auto-mapping. Mapping parameters are ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columnName=");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyName=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("propertyType=");	if r14 == null goto $r19 = null;	$r19 = virtualinvoke r14.<java.lang.Class: java.lang.String getName()>();	goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 3