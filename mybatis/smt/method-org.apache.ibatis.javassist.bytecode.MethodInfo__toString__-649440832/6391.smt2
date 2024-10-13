(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1239963277 (var1201) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDescriptor/241025769 (var1201) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1201 var1201)
(declare-const var3646 var1201) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var3646 null-var1201)))
(define-const var1018 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1018)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1018!1 String)
(assert (= var1018!1 ""))
(assert true)
(define-const var2792 String (getName/1239963277 var3646)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var3423 String (append/672562846 var1018!1 var2792)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1018!2 String)
(assert (= var1018!2 (str.++ var1018!1 var2792)))
(assert true)
(define-const var3346 String (append/672562846 var3423 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 " ")))
(assert true)
(define-const var82 String (getDescriptor/241025769 var3646)) ; Statement: $r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var344 String (append/672562846 var3346 var82)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3346!1 String)
(assert (= var3346!1 (str.++ var3346 var82)))
(assert true)
(define-const var2244 String (toString/-2075883882 var344)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1239963277=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1201=org.apache.ibatis.javassist.bytecode.MethodInfo, var3646=r1, var1018=$r0, var2792=$r2, var3423=$r3, var3346=$r5, var82=$r4, var344=$r6, var2244=$r7}
; {org.apache.ibatis.javassist.bytecode.MethodInfo=var1201, r1=var3646, $r0=var1018, $r2=var2792, $r3=var3423, $r5=var3346, $r4=var82, $r6=var344, $r7=var2244}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1