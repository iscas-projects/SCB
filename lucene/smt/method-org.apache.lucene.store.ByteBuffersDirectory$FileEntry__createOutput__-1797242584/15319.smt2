(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2228 0)
(declare-sort var2011 0)
(declare-sort var2833 0)
(declare-sort var2570 0)
(declare-sort var75 0)
(declare-sort var2217 0)
(declare-sort var2639 0)
(declare-sort var2724 0)
(declare-sort var751 0)
(declare-sort var3627 0)
(declare-sort var3652 0)
(declare-sort var158 0)
(declare-sort var891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2570!class ClassObject)
(declare-fun content/-489245705 (var2228) var2833)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun arr-var2217-init () (Array Int var2217))
(declare-fun cast-from-String-to-var2217 (String) var2217)
(declare-fun fileName/-489245705 (var2228) String)
(declare-fun String_format/-647569892 (var75 String (Array Int var2217)) String)
(declare-fun var2639-init () var2639)
(declare-fun this$0/-489245705 (var2228) var2570)
(declare-fun bbOutputSupplier/-1846442587 (var2570) var2724)
(declare-fun var2724_get/1017044072 (var2724) var2217)
(declare-fun cast-from-var2217-to-var751 (var2217) var751)
(declare-fun var3627-init () var3627)
(declare-fun <init>/1815860079 (var3627) void)
(declare-fun var158_bootstrap$/-1690784074 (var2228 var2011) var3652)
(declare-fun <init>/835124181 (var2639 var751 String String var891 var3652) void)
(declare-fun cast-from-var3627-to-var891 (var3627) var891)
(declare-const null-var2228 var2228)
(declare-const null-var2011 var2011)
(declare-const null-var2833 var2833)
(declare-const var75-ROOT var75)
(declare-const null-__Array__Int__var2217__ (Array Int var2217))
(declare-const var694 var2228) ; Statement: r0 := @this: org.apache.lucene.store.ByteBuffersDirectory$FileEntry 
(assert (not (= var694 null-var2228)))
(declare-const var1086 var2011) ; Statement: r14 := @parameter0: java.util.function.BiFunction 
(assert (not (= var1086 null-var2011)))
(define-const var2532 var2833 (content/-489245705 var694)) ; Statement: $r1 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: org.apache.lucene.store.IndexInput content> 
 ; Statement: if $r1 == null goto $r2 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;" 
(assert (= var2532 null-var2833)) ; Cond: $r1 == null 
(define-const var1723 ClassObject var2570!class) ; Statement: $r2 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;" 
(assert true)
(define-const var3595 String (getSimpleName/-390194377 var1723)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(define-const var2116 var75 var75-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var839 (Array Int var2217) arr-var2217-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(declare-const var839!1 (Array Int var2217))
(assert (not (= var839!1 null-__Array__Int__var2217__)))
(assert (= (select var839!1 0) (cast-from-String-to-var2217 var3595))) ; Statement: $r4[0] = r3 
(define-const var2343 String (fileName/-489245705 var694)) ; Statement: $r5 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: java.lang.String fileName> 
(declare-const var839!2 (Array Int var2217))
(assert (not (= var839!2 null-__Array__Int__var2217__)))
(assert (= (select var839!2 1) (cast-from-String-to-var2217 var2343))) ; Statement: $r4[1] = $r5 
(define-const var1401 String (String_format/-647569892 var2116 "%s output (file=%s)" var839!2)) ; Statement: r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s output (file=%s)", $r4) 
(define-const var1909 var2639 var2639-init) ; Statement: $r8 = new org.apache.lucene.store.ByteBuffersIndexOutput 
(define-const var2911 var2570 (this$0/-489245705 var694)) ; Statement: $r9 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: org.apache.lucene.store.ByteBuffersDirectory this$0> 
(define-const var3758 var2724 (bbOutputSupplier/-1846442587 var2911)) ; Statement: $r10 = $r9.<org.apache.lucene.store.ByteBuffersDirectory: java.util.function.Supplier bbOutputSupplier> 
(define-const var2908 var2217 (var2724_get/1017044072 var3758)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.function.Supplier: java.lang.Object get()>() 
(define-const var1382 var751 (cast-from-var2217-to-var751 var2908)) ; Statement: $r16 = (org.apache.lucene.store.ByteBuffersDataOutput) $r11 
(define-const var2850 String (fileName/-489245705 var694)) ; Statement: $r13 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: java.lang.String fileName> 
(define-const var3373 var3627 var3627-init) ; Statement: $r12 = new java.util.zip.CRC32 
(assert true)
;(assert (<init>/1815860079 var3373)) ; Statement: specialinvoke $r12.<java.util.zip.CRC32: void <init>()>() 

(declare-const var3373!1 var3627)
(define-const var2845 var3652 (var158_bootstrap$/-1690784074 var694 var1086)) ; Statement: $r15 = staticinvoke <org.apache.lucene.store.ByteBuffersDirectory$FileEntry$lambda_createOutput_0__392: java.util.function.Consumer bootstrap$(org.apache.lucene.store.ByteBuffersDirectory$FileEntry,java.util.function.BiFunction)>(r0, r14) 
(assert true)
;(assert (<init>/835124181 var1909 var1382 var1401 var2850 (cast-from-var3627-to-var891 var3373!1) var2845)) ; Statement: specialinvoke $r8.<org.apache.lucene.store.ByteBuffersIndexOutput: void <init>(org.apache.lucene.store.ByteBuffersDataOutput,java.lang.String,java.lang.String,java.util.zip.Checksum,java.util.function.Consumer)>($r16, r7, $r13, $r12, $r15) 

(declare-const var1909!1 var2639)
(declare-const var1382!1 var751)
(declare-const var1401!1 String)
(declare-const var2850!1 String)
(declare-const var3373!2 var3627)
(declare-const var2845!1 var3652)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {content/-489245705=([org.apache.lucene.store.ByteBuffersDirectory$FileEntry], org.apache.lucene.store.IndexInput), getSimpleName/-390194377=([java.lang.Class], java.lang.String), arr-var2217-init=([], java.lang.Object[]), cast-from-String-to-var2217=([java.lang.String], java.lang.Object), fileName/-489245705=([org.apache.lucene.store.ByteBuffersDirectory$FileEntry], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), var2639-init=([], org.apache.lucene.store.ByteBuffersIndexOutput), this$0/-489245705=([org.apache.lucene.store.ByteBuffersDirectory$FileEntry], org.apache.lucene.store.ByteBuffersDirectory), bbOutputSupplier/-1846442587=([org.apache.lucene.store.ByteBuffersDirectory], java.util.function.Supplier), var2724_get/1017044072=([java.util.function.Supplier], java.lang.Object), cast-from-var2217-to-var751=([java.lang.Object], org.apache.lucene.store.ByteBuffersDataOutput), var3627-init=([], java.util.zip.CRC32), <init>/1815860079=([java.util.zip.CRC32], void), var158_bootstrap$/-1690784074=([org.apache.lucene.store.ByteBuffersDirectory$FileEntry, java.util.function.BiFunction], java.util.function.Consumer), <init>/835124181=([org.apache.lucene.store.ByteBuffersIndexOutput, org.apache.lucene.store.ByteBuffersDataOutput, java.lang.String, java.lang.String, java.util.zip.Checksum, java.util.function.Consumer], void), cast-from-var3627-to-var891=([java.util.zip.CRC32], java.util.zip.Checksum)}
; {var2228=org.apache.lucene.store.ByteBuffersDirectory$FileEntry, var694=r0, var2011=java.util.function.BiFunction, var1086=r14, var2833=org.apache.lucene.store.IndexInput, var2532=$r1, var2570=org.apache.lucene.store.ByteBuffersDirectory, var1723=$r2, var3595=r3, var75=java.util.Locale, var2116=$r6, var2217=java.lang.Object, var839=$r4, var2343=$r5, var1401=r7, var2639=org.apache.lucene.store.ByteBuffersIndexOutput, var1909=$r8, var2911=$r9, var2724=java.util.function.Supplier, var3758=$r10, var2908=$r11, var751=org.apache.lucene.store.ByteBuffersDataOutput, var1382=$r16, var2850=$r13, var3627=java.util.zip.CRC32, var3373=$r12, var3652=java.util.function.Consumer, var158=org.apache.lucene.store.ByteBuffersDirectory$FileEntry$lambda_createOutput_0__392, var2845=$r15, var891=java.util.zip.Checksum}
; {org.apache.lucene.store.ByteBuffersDirectory$FileEntry=var2228, r0=var694, java.util.function.BiFunction=var2011, r14=var1086, org.apache.lucene.store.IndexInput=var2833, $r1=var2532, org.apache.lucene.store.ByteBuffersDirectory=var2570, $r2=var1723, r3=var3595, java.util.Locale=var75, $r6=var2116, java.lang.Object=var2217, $r4=var839, $r5=var2343, r7=var1401, org.apache.lucene.store.ByteBuffersIndexOutput=var2639, $r8=var1909, $r9=var2911, java.util.function.Supplier=var2724, $r10=var3758, $r11=var2908, org.apache.lucene.store.ByteBuffersDataOutput=var751, $r16=var1382, $r13=var2850, java.util.zip.CRC32=var3627, $r12=var3373, java.util.function.Consumer=var3652, org.apache.lucene.store.ByteBuffersDirectory$FileEntry$lambda_createOutput_0__392=var158, $r15=var2845, java.util.zip.Checksum=var891}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.store.ByteBuffersDirectory$FileEntry;	r14 := @parameter0: java.util.function.BiFunction;	$r1 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: org.apache.lucene.store.IndexInput content>;	if $r1 == null goto $r2 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;";	$r2 = class "Lorg/apache/lucene/store/ByteBuffersDirectory;";	r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[2];	$r4[0] = r3;	$r5 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: java.lang.String fileName>;	$r4[1] = $r5;	r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s output (file=%s)", $r4);	$r8 = new org.apache.lucene.store.ByteBuffersIndexOutput;	$r9 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: org.apache.lucene.store.ByteBuffersDirectory this$0>;	$r10 = $r9.<org.apache.lucene.store.ByteBuffersDirectory: java.util.function.Supplier bbOutputSupplier>;	$r11 = interfaceinvoke $r10.<java.util.function.Supplier: java.lang.Object get()>();	$r16 = (org.apache.lucene.store.ByteBuffersDataOutput) $r11;	$r13 = r0.<org.apache.lucene.store.ByteBuffersDirectory$FileEntry: java.lang.String fileName>;	$r12 = new java.util.zip.CRC32;	specialinvoke $r12.<java.util.zip.CRC32: void <init>()>();	$r15 = staticinvoke <org.apache.lucene.store.ByteBuffersDirectory$FileEntry$lambda_createOutput_0__392: java.util.function.Consumer bootstrap$(org.apache.lucene.store.ByteBuffersDirectory$FileEntry,java.util.function.BiFunction)>(r0, r14);	specialinvoke $r8.<org.apache.lucene.store.ByteBuffersIndexOutput: void <init>(org.apache.lucene.store.ByteBuffersDataOutput,java.lang.String,java.lang.String,java.util.zip.Checksum,java.util.function.Consumer)>($r16, r7, $r13, $r12, $r15);	return $r8
;block_num 2