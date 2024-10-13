(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3287 0)
(declare-sort var75 0)
(declare-sort var2658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iasDescriptorName/-1920223749 (var3287) String)
(declare-fun descriptorName/-1920223749 (var3287) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3287 var3287)
(declare-const null-String String)
(declare-const var2658-separatorChar Int)
(declare-const var3230 var3287) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool 
(assert (not (= var3230 null-var3287)))
(define-const var3826 String (iasDescriptorName/-1920223749 var3230)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String iasDescriptorName> 
 ; Statement: if $r1 == null goto r12 = "" 
(assert (= var3826 null-String)) ; Cond: $r1 == null 
(define-const var1466 String "") ; Statement: r12 = "" 
(define-const var582 String (descriptorName/-1920223749 var3230)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName> 
(define-const var1349 Int var2658-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var3304 Int (cast-from-Int-to-Int var1349)) ; Statement: $i10 = (int) $c0 
(assert true)
(define-const var3355 Int (lastIndexOf/-1292097097 var582 var3304)) ; Statement: i1 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(int)>($i10) 
(define-const var2366 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i1 == $i12 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName> 
(assert (= var3355 var2366)) ; Cond: i1 == $i12 
(define-const var3163 String (descriptorName/-1920223749 var3230)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName> 
(define-const var2344 Int (+ var3355 1)) ; Statement: $i2 = i1 + 1 
(assert (not (and true (and (>= var2344 0) (>= (str.len var3163) var2344)))))
(check-sat)
(get-model)
(get-unsat-core)
; {iasDescriptorName/-1920223749=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), descriptorName/-1920223749=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3287=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool, var3230=r0, var3826=$r1, var75=null_type, var1466=r12, var582=$r2, var2658=java.io.File, var1349=$c0, var3304=$i10, var3355=i1, var2366=$i12, var3163=$r3, var2344=$i2, var3777=$r4, var1093=$z0, var1334=r13, var846=r14, var2141=$r24, var1812=$r18, var3995=$r19, var2713=$r20, var3055=$r21, var2486=$r22, var3101=$r23}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool=var3287, r0=var3230, $r1=var3826, null_type=var75, r12=var1466, $r2=var582, java.io.File=var2658, $c0=var1349, $i10=var3304, i1=var3355, $i12=var2366, $r3=var3163, $i2=var2344, $r4=var3777, $z0=var1093, r13=var1334, r14=var846, $r24=var2141, $r18=var1812, $r19=var3995, $r20=var2713, $r21=var3055, $r22=var2486, $r23=var3101}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String iasDescriptorName>;	if $r1 == null goto r12 = "";	r12 = "";	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName>;	$c0 = <java.io.File: char separatorChar>;	$i10 = (int) $c0;	i1 = virtualinvoke $r2.<java.lang.String: int lastIndexOf(int)>($i10);	$i12 = (int) -1;	if i1 == $i12 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName>;	$i2 = i1 + 1;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int)>($i2);	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("ejb-jar.xml");	if $z0 == 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName>;	r13 = "";	r14 = "ejb-jar.xml";	goto [?= $r24 = new java.lang.StringBuilder];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ias-");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String iasDescriptorName> = $r22;	$r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String iasDescriptorName>;	return $r23
;block_num 5