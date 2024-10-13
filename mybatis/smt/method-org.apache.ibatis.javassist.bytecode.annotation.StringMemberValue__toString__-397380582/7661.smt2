(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/1081759851 (var2007) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2007 var2007)
(declare-const var310 var2007) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue 
(assert (not (= var310 null-var2007)))
(define-const var1075 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1075)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1075!1 String)
(assert (= var1075!1 ""))
(assert true)
(define-const var3946 String (append/672562846 var1075!1 "\u0022")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1075!2 String)
(assert (= var1075!2 (str.++ var1075!1 "\u0022")))
(assert true)
(define-const var919 String (getValue/1081759851 var310)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.StringMemberValue: java.lang.String getValue()>() 
(assert true)
(define-const var3064 String (append/672562846 var3946 var919)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3946!1 String)
(assert (= var3946!1 (str.++ var3946 var919)))
(assert true)
(define-const var348 String (append/672562846 var3064 "\u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 "\u0022")))
(assert true)
(define-const var268 String (toString/-2075883882 var348)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/1081759851=([org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2007=org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue, var310=r1, var1075=$r0, var3946=$r3, var919=$r2, var3064=$r4, var348=$r5, var268=$r6}
; {org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue=var2007, r1=var310, $r0=var1075, $r3=var3946, $r2=var919, $r4=var3064, $r5=var348, $r6=var268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.StringMemberValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.'annotation'.StringMemberValue: java.lang.String getValue()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1