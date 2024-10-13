(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var22 0)
(declare-sort var908 0)
(declare-sort var2158 0)
(declare-sort var192 0)
(declare-sort var77 0)
(declare-sort var2941 0)
(declare-sort var2489 0)
(declare-sort var2656 0)
(declare-sort var660 0)
(declare-sort var1838 0)
(declare-sort var2372 0)
(declare-sort var51 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charsetEncoder/-1079597952 (var22) var908)
(declare-fun cast-from-var192-to-var2158 (var192) var2158)
(declare-fun getCharset/-1200697950 (var77) var192)
(declare-fun cast-from-var22-to-var77 (var22) var77)
(declare-fun var2941-init () var2941)
(declare-fun checkOrigin/-836514567 (var2656) var2489)
(declare-fun cast-from-var22-to-var2656 (var22) var2656)
(declare-fun getFile/-725099619 (var2489) var660)
(declare-fun append/-1079597952 (var22) Bool)
(declare-fun var2941_access$000/277009981 (var660 var2158 Bool) var1838)
(declare-fun <init>/1371758156 (var2941 var1838 var2372) void)
(declare-const null-var22 var22)
(declare-const null-var908 var908)
(declare-const null-NullType var51)
(declare-const null-var2372 var2372)
(declare-const var2822 var22) ; Statement: r0 := @this: org.apache.commons.io.output.FileWriterWithEncoding$Builder 
(assert (not (= var2822 null-var22)))
(define-const var1213 var908 (charsetEncoder/-1079597952 var2822)) ; Statement: $r1 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
 ; Statement: if $r1 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert (= var1213 null-var908)) ; Cond: $r1 == null 
(define-const var3378 var908 (charsetEncoder/-1079597952 var2822)) ; Statement: $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
 ; Statement: if $r16 == null goto $r17 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>() 
(assert (= var3378 null-var908)) ; Cond: $r16 == null 
(assert true)
(define-const var2861 var2158 (cast-from-var192-to-var2158 (getCharset/-1200697950 (cast-from-var22-to-var77 var2822)))) ; Statement: $r17 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>() 
(assert true) ; Non Conditional
(define-const var3780 var2941 var2941-init) ; Statement: $r2 = new org.apache.commons.io.output.FileWriterWithEncoding 
(assert true)
(define-const var2769 var2489 (checkOrigin/-836514567 (cast-from-var22-to-var2656 var2822))) ; Statement: $r3 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: org.apache.commons.io.build.AbstractOrigin checkOrigin()>() 
(assert true)
(define-const var3509 var660 (getFile/-725099619 var2769)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.commons.io.build.AbstractOrigin: java.io.File getFile()>() 
(define-const var3805 Bool (append/-1079597952 var2822)) ; Statement: $z0 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: boolean append> 
(define-const var2424 var1838 (var2941_access$000/277009981 var3509 var2861 var3805)) ; Statement: $r5 = staticinvoke <org.apache.commons.io.output.FileWriterWithEncoding: java.io.OutputStreamWriter access$000(java.io.File,java.lang.Object,boolean)>($r4, $r17, $z0) 
(assert true)
;(assert (<init>/1371758156 var3780 var2424 null-var2372)) ; Statement: specialinvoke $r2.<org.apache.commons.io.output.FileWriterWithEncoding: void <init>(java.io.OutputStreamWriter,org.apache.commons.io.output.FileWriterWithEncoding$1)>($r5, null) 

(declare-const var3780!1 var2941)
(declare-const var2424!1 var1838)
(declare-const var1662 var51)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {charsetEncoder/-1079597952=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], java.nio.charset.CharsetEncoder), cast-from-var192-to-var2158=([java.nio.charset.Charset], java.lang.Object), getCharset/-1200697950=([org.apache.commons.io.build.AbstractStreamBuilder], java.nio.charset.Charset), cast-from-var22-to-var77=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], org.apache.commons.io.build.AbstractStreamBuilder), var2941-init=([], org.apache.commons.io.output.FileWriterWithEncoding), checkOrigin/-836514567=([org.apache.commons.io.build.AbstractOriginSupplier], org.apache.commons.io.build.AbstractOrigin), cast-from-var22-to-var2656=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], org.apache.commons.io.build.AbstractOriginSupplier), getFile/-725099619=([org.apache.commons.io.build.AbstractOrigin], java.io.File), append/-1079597952=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], boolean), var2941_access$000/277009981=([java.io.File, java.lang.Object, boolean], java.io.OutputStreamWriter), <init>/1371758156=([org.apache.commons.io.output.FileWriterWithEncoding, java.io.OutputStreamWriter, org.apache.commons.io.output.FileWriterWithEncoding$1], void)}
; {var22=org.apache.commons.io.output.FileWriterWithEncoding$Builder, var2822=r0, var908=java.nio.charset.CharsetEncoder, var1213=$r1, var3378=$r16, var2158=java.lang.Object, var192=java.nio.charset.Charset, var77=org.apache.commons.io.build.AbstractStreamBuilder, var2861=$r17, var2941=org.apache.commons.io.output.FileWriterWithEncoding, var3780=$r2, var2489=org.apache.commons.io.build.AbstractOrigin, var2656=org.apache.commons.io.build.AbstractOriginSupplier, var2769=$r3, var660=java.io.File, var3509=$r4, var3805=$z0, var1838=java.io.OutputStreamWriter, var2424=$r5, var2372=org.apache.commons.io.output.FileWriterWithEncoding$1, var1662=null, var51=null_type}
; {org.apache.commons.io.output.FileWriterWithEncoding$Builder=var22, r0=var2822, java.nio.charset.CharsetEncoder=var908, $r1=var1213, $r16=var3378, java.lang.Object=var2158, java.nio.charset.Charset=var192, org.apache.commons.io.build.AbstractStreamBuilder=var77, $r17=var2861, org.apache.commons.io.output.FileWriterWithEncoding=var2941, $r2=var3780, org.apache.commons.io.build.AbstractOrigin=var2489, org.apache.commons.io.build.AbstractOriginSupplier=var2656, $r3=var2769, java.io.File=var660, $r4=var3509, $z0=var3805, java.io.OutputStreamWriter=var1838, $r5=var2424, org.apache.commons.io.output.FileWriterWithEncoding$1=var2372, null=var1662, null_type=var51}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.output.FileWriterWithEncoding$Builder;	$r1 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	if $r1 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	if $r16 == null goto $r17 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>();	$r17 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>();	$r2 = new org.apache.commons.io.output.FileWriterWithEncoding;	$r3 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: org.apache.commons.io.build.AbstractOrigin checkOrigin()>();	$r4 = virtualinvoke $r3.<org.apache.commons.io.build.AbstractOrigin: java.io.File getFile()>();	$z0 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: boolean append>;	$r5 = staticinvoke <org.apache.commons.io.output.FileWriterWithEncoding: java.io.OutputStreamWriter access$000(java.io.File,java.lang.Object,boolean)>($r4, $r17, $z0);	specialinvoke $r2.<org.apache.commons.io.output.FileWriterWithEncoding: void <init>(java.io.OutputStreamWriter,org.apache.commons.io.output.FileWriterWithEncoding$1)>($r5, null);	return $r2
;block_num 4