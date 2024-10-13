(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3473 0)
(declare-sort var2888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var2888) Bool)
(declare-fun cast-from-var3473-to-var2888 (var3473) var2888)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nameIndex/-36421117 (var3473) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun descriptorIndex/-36421117 (var3473) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3473 var3473)
(declare-const var3117 var3473) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo 
(assert (not (= var3117 null-var3473)))
(assert true)
(define-const var3853 Bool (isResolved/-1062758483 (cast-from-var3473-to-var2888 var3117))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3853 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1494 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1494)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1494!1 String)
(assert (= var1494!1 ""))
(assert true)
(define-const var3631 String (append/672562846 var1494!1 "Name index = ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name index = ") 
(declare-const var1494!2 String)
(assert (= var1494!2 (str.++ var1494!1 "Name index = ")))
(define-const var1447 Int (nameIndex/-36421117 var3117)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: int nameIndex> 
(assert true)
(define-const var1440 String (append/-1001720160 var3631 var1447)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3631!1 String)
(assert (str.prefixof var3631 var3631!1))
(assert true)
(define-const var2320 String (append/672562846 var1440 ", descriptor index = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", descriptor index = ") 
(declare-const var1440!1 String)
(assert (= var1440!1 (str.++ var1440 ", descriptor index = ")))
(define-const var1198 Int (descriptorIndex/-36421117 var3117)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: int descriptorIndex> 
(assert true)
(define-const var1156 String (append/-1001720160 var2320 var1198)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2320!1 String)
(assert (str.prefixof var2320 var2320!1))
(assert true)
(define-const var334 String (toString/-2075883882 var1156)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var3473-to-var2888=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nameIndex/-36421117=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), descriptorIndex/-36421117=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3473=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo, var3117=r0, var2888=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var3853=$z0, var1494=$r1, var3631=$r2, var1447=$i0, var1440=$r3, var2320=$r4, var1198=$i1, var1156=$r5, var334=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo=var3473, r0=var3117, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var2888, $z0=var3853, $r1=var1494, $r2=var3631, $i0=var1447, $r3=var1440, $r4=var2320, $i1=var1198, $r5=var1156, $r6=var334}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name index = ");	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: int nameIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", descriptor index = ");	$i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.NameAndTypeCPInfo: int descriptorIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2