(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var116 0)
(declare-sort var2428 0)
(declare-sort var3704 0)
(declare-sort var3115 0)
(declare-sort var2083 0)
(declare-sort var231 0)
(declare-sort var2761 0)
(declare-sort var290 0)
(declare-sort var3705 0)
(declare-sort var2615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charsetEncoder/-1079597952 (var116) var2428)
(declare-fun cast-from-var2428-to-var3704 (var2428) var3704)
(declare-fun var3115-init () var3115)
(declare-fun checkOrigin/-836514567 (var231) var2083)
(declare-fun cast-from-var116-to-var231 (var116) var231)
(declare-fun getFile/-725099619 (var2083) var2761)
(declare-fun append/-1079597952 (var116) Bool)
(declare-fun var3115_access$000/277009981 (var2761 var3704 Bool) var290)
(declare-fun <init>/1371758156 (var3115 var290 var3705) void)
(declare-const null-var116 var116)
(declare-const null-var2428 var2428)
(declare-const null-NullType var2615)
(declare-const null-var3705 var3705)
(declare-const var1302 var116) ; Statement: r0 := @this: org.apache.commons.io.output.FileWriterWithEncoding$Builder 
(assert (not (= var1302 null-var116)))
(define-const var1629 var2428 (charsetEncoder/-1079597952 var1302)) ; Statement: $r1 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
 ; Statement: if $r1 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
(assert (= var1629 null-var2428)) ; Cond: $r1 == null 
(define-const var3209 var2428 (charsetEncoder/-1079597952 var1302)) ; Statement: $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
 ; Statement: if $r16 == null goto $r17 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>() 
(assert (not (= var3209 null-var2428))) ; Negate: Cond: $r16 == null  
(define-const var1179 var3704 (cast-from-var2428-to-var3704 (charsetEncoder/-1079597952 var1302))) ; Statement: $r17 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder> 
 ; Statement: goto [?= $r2 = new org.apache.commons.io.output.FileWriterWithEncoding] 
(assert true) ; Non Conditional
(define-const var144 var3115 var3115-init) ; Statement: $r2 = new org.apache.commons.io.output.FileWriterWithEncoding 
(assert true)
(define-const var1873 var2083 (checkOrigin/-836514567 (cast-from-var116-to-var231 var1302))) ; Statement: $r3 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: org.apache.commons.io.build.AbstractOrigin checkOrigin()>() 
(assert true)
(define-const var1842 var2761 (getFile/-725099619 var1873)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.commons.io.build.AbstractOrigin: java.io.File getFile()>() 
(define-const var3278 Bool (append/-1079597952 var1302)) ; Statement: $z0 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: boolean append> 
(define-const var552 var290 (var3115_access$000/277009981 var1842 var1179 var3278)) ; Statement: $r5 = staticinvoke <org.apache.commons.io.output.FileWriterWithEncoding: java.io.OutputStreamWriter access$000(java.io.File,java.lang.Object,boolean)>($r4, $r17, $z0) 
(assert true)
;(assert (<init>/1371758156 var144 var552 null-var3705)) ; Statement: specialinvoke $r2.<org.apache.commons.io.output.FileWriterWithEncoding: void <init>(java.io.OutputStreamWriter,org.apache.commons.io.output.FileWriterWithEncoding$1)>($r5, null) 

(declare-const var144!1 var3115)
(declare-const var552!1 var290)
(declare-const var2361 var2615)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {charsetEncoder/-1079597952=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], java.nio.charset.CharsetEncoder), cast-from-var2428-to-var3704=([java.nio.charset.CharsetEncoder], java.lang.Object), var3115-init=([], org.apache.commons.io.output.FileWriterWithEncoding), checkOrigin/-836514567=([org.apache.commons.io.build.AbstractOriginSupplier], org.apache.commons.io.build.AbstractOrigin), cast-from-var116-to-var231=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], org.apache.commons.io.build.AbstractOriginSupplier), getFile/-725099619=([org.apache.commons.io.build.AbstractOrigin], java.io.File), append/-1079597952=([org.apache.commons.io.output.FileWriterWithEncoding$Builder], boolean), var3115_access$000/277009981=([java.io.File, java.lang.Object, boolean], java.io.OutputStreamWriter), <init>/1371758156=([org.apache.commons.io.output.FileWriterWithEncoding, java.io.OutputStreamWriter, org.apache.commons.io.output.FileWriterWithEncoding$1], void)}
; {var116=org.apache.commons.io.output.FileWriterWithEncoding$Builder, var1302=r0, var2428=java.nio.charset.CharsetEncoder, var1629=$r1, var3209=$r16, var3704=java.lang.Object, var1179=$r17, var3115=org.apache.commons.io.output.FileWriterWithEncoding, var144=$r2, var2083=org.apache.commons.io.build.AbstractOrigin, var231=org.apache.commons.io.build.AbstractOriginSupplier, var1873=$r3, var2761=java.io.File, var1842=$r4, var3278=$z0, var290=java.io.OutputStreamWriter, var552=$r5, var3705=org.apache.commons.io.output.FileWriterWithEncoding$1, var2361=null, var2615=null_type}
; {org.apache.commons.io.output.FileWriterWithEncoding$Builder=var116, r0=var1302, java.nio.charset.CharsetEncoder=var2428, $r1=var1629, $r16=var3209, java.lang.Object=var3704, $r17=var1179, org.apache.commons.io.output.FileWriterWithEncoding=var3115, $r2=var144, org.apache.commons.io.build.AbstractOrigin=var2083, org.apache.commons.io.build.AbstractOriginSupplier=var231, $r3=var1873, java.io.File=var2761, $r4=var1842, $z0=var3278, java.io.OutputStreamWriter=var290, $r5=var552, org.apache.commons.io.output.FileWriterWithEncoding$1=var3705, null=var2361, null_type=var2615}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.output.FileWriterWithEncoding$Builder;	$r1 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	if $r1 == null goto $r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	$r16 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	if $r16 == null goto $r17 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.Charset getCharset()>();	$r17 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: java.nio.charset.CharsetEncoder charsetEncoder>;	goto [?= $r2 = new org.apache.commons.io.output.FileWriterWithEncoding];	$r2 = new org.apache.commons.io.output.FileWriterWithEncoding;	$r3 = virtualinvoke r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: org.apache.commons.io.build.AbstractOrigin checkOrigin()>();	$r4 = virtualinvoke $r3.<org.apache.commons.io.build.AbstractOrigin: java.io.File getFile()>();	$z0 = r0.<org.apache.commons.io.output.FileWriterWithEncoding$Builder: boolean append>;	$r5 = staticinvoke <org.apache.commons.io.output.FileWriterWithEncoding: java.io.OutputStreamWriter access$000(java.io.File,java.lang.Object,boolean)>($r4, $r17, $z0);	specialinvoke $r2.<org.apache.commons.io.output.FileWriterWithEncoding: void <init>(java.io.OutputStreamWriter,org.apache.commons.io.output.FileWriterWithEncoding$1)>($r5, null);	return $r2
;block_num 4