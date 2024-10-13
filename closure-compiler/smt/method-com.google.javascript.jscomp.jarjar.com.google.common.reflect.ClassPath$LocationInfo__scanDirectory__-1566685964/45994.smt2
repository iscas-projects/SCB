(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var3745 0)
(declare-sort var3838 0)
(declare-sort var2130 0)
(declare-sort var1470 0)
(declare-sort var1629 0)
(declare-sort var768 0)
(declare-sort var744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun listFiles/1368441200 (var3745) (Array Int var3745))
(declare-fun var768_access$000/291791414 () var1629)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var744) String)
(declare-fun cast-from-var3745-to-var744 (var3745) var744)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warning/-1321853967 (var1629 String) void)
(declare-const null-var2298 var2298)
(declare-const null-var3745 var3745)
(declare-const null-String String)
(declare-const null-var2130 var2130)
(declare-const null-var1470 var1470)
(declare-const null-__Array__Int__var3745__ (Array Int var3745))
(declare-const var1822 var2298) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo 
(assert (not (= var1822 null-var2298)))
(declare-const var2761 var3745) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2761 null-var3745)))
(declare-const var3116 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3116 null-String)))
(declare-const var2967 var2130) ; Statement: r12 := @parameter2: java.util.Set 
(assert (not (= var2967 null-var2130)))
(declare-const var748 var1470) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder 
(assert (not (= var748 null-var1470)))
(assert true)
(define-const var1283 (Array Int var3745) (listFiles/1368441200 var2761)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>() 
 ; Statement: if r1 != null goto i0 = lengthof r1 
(assert (not (not (= var1283 null-__Array__Int__var3745__)))) ; Negate: Cond: r1 != null  
(define-const var3959 var1629 var768_access$000/291791414) ; Statement: $r22 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath: java.util.logging.Logger access$000()>() 
(define-const var1091 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1091)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1091!1 String)
(assert (= var1091!1 ""))
(assert true)
(define-const var745 String (append/672562846 var1091!1 "Cannot read directory ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot read directory ") 
(declare-const var1091!2 String)
(assert (= var1091!2 (str.++ var1091!1 "Cannot read directory ")))
(assert true)
(define-const var2688 String (append/-1031950772 var745 (cast-from-var3745-to-var744 var2761))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var745!1 String)
(assert (str.prefixof var745 var745!1))
(assert true)
(define-const var3514 String (toString/-2075883882 var2688)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warning/-1321853967 var3959 var3514)) ; Statement: virtualinvoke $r22.<java.util.logging.Logger: void warning(java.lang.String)>($r21) 

(declare-const var3959!1 var1629)
(declare-const var3514!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {listFiles/1368441200=([java.io.File], java.io.File[]), var768_access$000/291791414=([], java.util.logging.Logger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3745-to-var744=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warning/-1321853967=([java.util.logging.Logger, java.lang.String], void)}
; {var2298=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo, var1822=r9, var3745=java.io.File, var2761=r0, var3116=r5, var3838=null_type, var2130=java.util.Set, var2967=r12, var1470=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder, var748=r8, var1283=r1, var1629=java.util.logging.Logger, var768=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath, var3959=$r22, var1091=$r18, var745=$r19, var744=java.lang.Object, var2688=$r20, var3514=$r21}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo=var2298, r9=var1822, java.io.File=var3745, r0=var2761, r5=var3116, null_type=var3838, java.util.Set=var2130, r12=var2967, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder=var1470, r8=var748, r1=var1283, java.util.logging.Logger=var1629, com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath=var768, $r22=var3959, $r18=var1091, $r19=var745, java.lang.Object=var744, $r20=var2688, $r21=var3514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$LocationInfo;	r0 := @parameter0: java.io.File;	r5 := @parameter1: java.lang.String;	r12 := @parameter2: java.util.Set;	r8 := @parameter3: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet$Builder;	r1 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>();	if r1 != null goto i0 = lengthof r1;	$r22 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath: java.util.logging.Logger access$000()>();	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot read directory ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r22.<java.util.logging.Logger: void warning(java.lang.String)>($r21);	return
;block_num 2