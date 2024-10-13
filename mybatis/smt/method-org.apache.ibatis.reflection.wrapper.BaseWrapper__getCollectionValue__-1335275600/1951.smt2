(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var1128 0)
(declare-sort var1224 0)
(declare-sort var555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var555-init () var555)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getIndexedName/-703281680 (var1128) String)
(declare-fun getName/-1907289949 (var1128) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var555 String) void)
(declare-const null-var181 var181)
(declare-const null-var1128 var1128)
(declare-const null-var1224 var1224)
(declare-const var537 var181) ; Statement: r46 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper 
(assert (not (= var537 null-var181)))
(declare-const var1394 var1128) ; Statement: r1 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var1394 null-var1128)))
(declare-const var2782 var1224) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2782 null-var1224)))
 ; Statement: if r0 != null goto $z0 = r0 instanceof java.util.Map 
(assert (not (not (= var2782 null-var1224)))) ; Negate: Cond: r0 != null  
(define-const var244 var555 var555-init) ; Statement: $r36 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var3602 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3602)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3602!1 String)
(assert (= var3602!1 ""))
(assert true)
(define-const var3330 String (append/672562846 var3602!1 "Cannot get the value \u0027")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get the value \'") 
(declare-const var3602!2 String)
(assert (= var3602!2 (str.++ var3602!1 "Cannot get the value \u0027")))
(assert true)
(define-const var2485 String (getIndexedName/-703281680 var1394)) ; Statement: $r38 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getIndexedName()>() 
(assert true)
(define-const var1043 String (append/672562846 var3330 var2485)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var3330!1 String)
(assert (= var3330!1 (str.++ var3330 var2485)))
(assert true)
(define-const var1176 String (append/672562846 var1043 "\u0027 because the property \u0027")) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' because the property \'") 
(declare-const var1043!1 String)
(assert (= var1043!1 (str.++ var1043 "\u0027 because the property \u0027")))
(assert true)
(define-const var1450 String (getName/-1907289949 var1394)) ; Statement: $r41 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var1515 String (append/672562846 var1176 var1450)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1176!1 String)
(assert (= var1176!1 (str.++ var1176 var1450)))
(assert true)
(define-const var3984 String (append/672562846 var1515 "\u0027 is null.")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is null.") 
(declare-const var1515!1 String)
(assert (= var1515!1 (str.++ var1515 "\u0027 is null.")))
(assert true)
(define-const var1857 String (toString/-2075883882 var3984)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var244 var1857)) ; Statement: specialinvoke $r36.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r45) 

(declare-const var244!1 var555)
(declare-const var1857!1 String)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var555-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getIndexedName/-703281680=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), getName/-1907289949=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var181=org.apache.ibatis.reflection.wrapper.BaseWrapper, var537=r46, var1128=org.apache.ibatis.reflection.property.PropertyTokenizer, var1394=r1, var1224=java.lang.Object, var2782=r0, var555=org.apache.ibatis.reflection.ReflectionException, var244=$r36, var3602=$r37, var3330=$r39, var2485=$r38, var1043=$r40, var1176=$r42, var1450=$r41, var1515=$r43, var3984=$r44, var1857=$r45}
; {org.apache.ibatis.reflection.wrapper.BaseWrapper=var181, r46=var537, org.apache.ibatis.reflection.property.PropertyTokenizer=var1128, r1=var1394, java.lang.Object=var1224, r0=var2782, org.apache.ibatis.reflection.ReflectionException=var555, $r36=var244, $r37=var3602, $r39=var3330, $r38=var2485, $r40=var1043, $r42=var1176, $r41=var1450, $r43=var1515, $r44=var3984, $r45=var1857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r46 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper;	r1 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $z0 = r0 instanceof java.util.Map;	$r36 = new org.apache.ibatis.reflection.ReflectionException;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get the value \'");	$r38 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getIndexedName()>();	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' because the property \'");	$r41 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is null.");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r45);	throw $r36
;block_num 2