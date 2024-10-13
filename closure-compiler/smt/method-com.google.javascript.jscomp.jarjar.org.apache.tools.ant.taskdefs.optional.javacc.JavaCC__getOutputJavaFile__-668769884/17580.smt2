(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var584 0)
(declare-sort var3635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var3635) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3635-init () var3635)
(declare-fun <init>/-1681595970 (var3635 String) void)
(declare-const null-var584 var584)
(declare-const null-var3635 var3635)
(declare-const var3635-separator String)
(declare-const var556 var584) ; Statement: r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC 
(assert (not (= var556 null-var584)))
(declare-const var3158 var3635) ; Statement: r5 := @parameter0: java.io.File 
(assert (not (= var3158 null-var3635)))
(declare-const var600 var3635) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var600 null-var3635)))
(assert true)
(define-const var1468 String (getPath/-1385219261 var600)) ; Statement: r17 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(define-const var0 String var3635-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1344 Int (lastIndexOf/-618837785 var1468 var0)) ; Statement: i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(java.lang.String)>($r1) 
(define-const var802 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 == $i4 goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (= var1344 var802)) ; Cond: i0 == $i4 
(assert true)
(define-const var532 Int (lastIndexOf/-1292097097 var1468 46)) ; Statement: $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2849 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i2 == $i6 goto $r20 = new java.lang.StringBuilder 
(assert (= var532 var2849)) ; Cond: $i2 == $i6 
(define-const var2252 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2252)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2252!1 String)
(assert (= var2252!1 ""))
(assert true)
(define-const var3451 String (append/672562846 var2252!1 var1468)) ; Statement: $r3 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var2252!2 String)
(assert (= var2252!2 (str.++ var2252!1 var1468)))
(assert true)
(define-const var2840 String (append/672562846 var3451 ".java")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var3451!1 String)
(assert (= var3451!1 (str.++ var3451 ".java")))
(assert true)
(define-const var1066 String (toString/-2075883882 var2840)) ; Statement: r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto $r22 = new java.io.File 
(assert (= var3158 null-var3635)) ; Cond: r5 == null 
(define-const var257 var3635 var3635-init) ; Statement: $r22 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var257 var1066)) ; Statement: specialinvoke $r22.<java.io.File: void <init>(java.lang.String)>(r18) 

(declare-const var257!1 var3635)
(declare-const var1066!1 String)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3635-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC, var556=r16, var3635=java.io.File, var3158=r5, var600=r0, var1468=r17, var0=$r1, var1344=i0, var802=$i4, var532=$i2, var2849=$i6, var2252=$r20, var3451=$r3, var2840=$r4, var1066=r18, var257=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC=var584, r16=var556, java.io.File=var3635, r5=var3158, r0=var600, r17=var1468, $r1=var0, i0=var1344, $i4=var802, $i2=var532, $i6=var2849, $r20=var2252, $r3=var3451, $r4=var2840, r18=var1066, $r22=var257}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JavaCC;	r5 := @parameter0: java.io.File;	r0 := @parameter1: java.io.File;	r17 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r1 = <java.io.File: java.lang.String separator>;	i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(java.lang.String)>($r1);	$i4 = (int) -1;	if i0 == $i4 goto $i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(46);	$i6 = (int) -1;	if $i2 == $i6 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r5 == null goto $r22 = new java.io.File;	$r22 = new java.io.File;	specialinvoke $r22.<java.io.File: void <init>(java.lang.String)>(r18);	return $r22
;block_num 5