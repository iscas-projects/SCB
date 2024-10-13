(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3745 0)
(declare-sort var2553 0)
(declare-sort var1321 0)
(declare-sort var1166 0)
(declare-sort var3369 0)
(declare-sort var1863 0)
(declare-sort var22 0)
(declare-sort var1790 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var2553) var1166)
(declare-fun classNameType/1968396404 (var2553) String)
(declare-fun var3369-init () var3369)
(declare-fun <init>/-2069075760 (var3369) void)
(declare-fun jsonb/1968396404 (var2553) Bool)
(declare-fun fieldName/-2048851183 (var1321) String)
(declare-fun getBytes/-163691139 (String var1863) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun cast-from-Int-to-var1790 (Int) var1790)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2005-init () var2005)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2005 String) void)
(declare-const null-var3745 var3745)
(declare-const null-var2553 var2553)
(declare-const null-var1321 var1321)
(declare-const null-Int Int)
(declare-const var22-UTF_8 var1863)
(declare-const var3863 var3745) ; Statement: r42 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3863 null-var3745)))
(declare-const var3661 var2553) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3661 null-var2553)))
(declare-const var710 var1321) ; Statement: r5 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var710 null-var1321)))
(declare-const var1120 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1120 null-Int)))
(define-const var3633 var1166 (mw/1968396404 var3661)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var522 String (classNameType/1968396404 var3661)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2249 var3369 var3369-init) ; Statement: $r71 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2249)) ; Statement: specialinvoke $r71.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2249!1 var3369)
(define-const var2819 var3369 var3369-init) ; Statement: $r72 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2819)) ; Statement: specialinvoke $r72.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2819!1 var3369)
(define-const var461 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var990 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var2454 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2665 Bool (jsonb/1968396404 var3661)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
 ; Statement: if $z0 != 0 goto $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(assert (not (not (= (ite var2665 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var766 String (fieldName/-2048851183 var710)) ; Statement: $r17 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(define-const var623 var1863 var22-UTF_8) ; Statement: $r16 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1377 (Array Int Int) (getBytes/-163691139 var766 var623)) ; Statement: r43 = virtualinvoke $r17.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r16) 
(define-const var1291 Bool (ite (= 1 1) true false)) ; Statement: z7 = 1 
(define-const var594 Int 0) ; Statement: i69 = 0 
(assert true) ; Non Conditional
(define-const var1268 Int (getLength-Arr-Int-1 var1377)) ; Statement: $i7 = lengthof r43 
 ; Statement: if i69 >= $i7 goto $i68 = lengthof r43 
(assert (>= var594 var1268)) ; Cond: i69 >= $i7 
(define-const var2025 Int (getLength-Arr-Int-1 var1377)) ; Statement: $i68 = lengthof r43 
 ; Statement: if $i68 < 2 goto (branch) 
(assert (not (< var2025 2))) ; Negate: Cond: $i68 < 2  
 ; Statement: if $i68 > 16 goto (branch) 
(assert (not (> var2025 16))) ; Negate: Cond: $i68 > 16  
 ; Statement: if z7 == 0 goto (branch) 
(assert (not (= (ite var1291 1 0) 0))) ; Negate: Cond: z7 == 0  
(define-const var2954 var1790 (cast-from-Int-to-var1790 (Int_valueOf/-1371140006 0))) ; Statement: r44 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(define-const var1136 var1790 (cast-from-Int-to-var1790 (Int_valueOf/-1371140006 0))) ; Statement: r45 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(define-const var3161 String "(J)V") ; Statement: r46 = "(J)V" 
(define-const var1936 String "(J)V") ; Statement: r68 = "(J)V" 
(define-const var3438 String "(J)V") ; Statement: r67 = "(J)V" 
(define-const var2544 String "(J)V") ; Statement: r66 = "(J)V" 
(define-const var1441 (Array Int Int) arr-Int-init) ; Statement: r47 = newarray (byte)[8] 
 ; Statement: tableswitch($i68) {     case 2: goto r47[0] = 34;     case 3: goto r47[0] = 34;     case 4: goto r47[0] = 34;     case 5: goto r47[0] = 34;     case 6: goto r47[0] = 34;     case 7: goto r47[0] = 34;     case 8: goto r47 = r43;     case 9: goto r47[0] = 34;     case 10: goto r47[0] = 34;     case 11: goto r47[0] = 34;     case 12: goto r47[0] = 34;     case 13: goto r47[0] = 34;     case 14: goto r47[0] = 34;     case 15: goto r47[0] = 34;     case 16: goto staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r43, 0, r47, 0, 8);     default: goto $r74 = new java.lang.IllegalStateException; } 
(assert (and (not (= var2025 16)) (and (not (= var2025 15)) (and (not (= var2025 14)) (and (not (= var2025 13)) (and (not (= var2025 12)) (and (not (= var2025 11)) (and (not (= var2025 10)) (and (not (= var2025 9)) (and (not (= var2025 8)) (and (not (= var2025 7)) (and (not (= var2025 6)) (and (not (= var2025 5)) (and (not (= var2025 4)) (and (not (= var2025 3)) (and (not (= var2025 2)) true)))))))))))))))) ; Intersect: Negate: Cond: $i68 == 16   and Intersect: Negate: Cond: $i68 == 15   and Intersect: Negate: Cond: $i68 == 14   and Intersect: Negate: Cond: $i68 == 13   and Intersect: Negate: Cond: $i68 == 12   and Intersect: Negate: Cond: $i68 == 11   and Intersect: Negate: Cond: $i68 == 10   and Intersect: Negate: Cond: $i68 == 9   and Intersect: Negate: Cond: $i68 == 8   and Intersect: Negate: Cond: $i68 == 7   and Intersect: Negate: Cond: $i68 == 6   and Intersect: Negate: Cond: $i68 == 5   and Intersect: Negate: Cond: $i68 == 4   and Intersect: Negate: Cond: $i68 == 3   and Intersect: Negate: Cond: $i68 == 2   and Non Conditional               
(define-const var1057 var2005 var2005-init) ; Statement: $r74 = new java.lang.IllegalStateException 
(define-const var3791 String String-init) ; Statement: $r73 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3791)) ; Statement: specialinvoke $r73.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3791!1 String)
(assert (= var3791!1 ""))
(assert true)
(define-const var2876 String (append/672562846 var3791!1 "length : ")) ; Statement: $r39 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("length : ") 
(declare-const var3791!2 String)
(assert (= var3791!2 (str.++ var3791!1 "length : ")))
(assert true)
(define-const var3493 String (append/-1001720160 var2876 var2025)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i68) 
(declare-const var2876!1 String)
(assert (str.prefixof var2876 var2876!1))
(assert true)
(define-const var845 String (toString/-2075883882 var3493)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1057 var845)) ; Statement: specialinvoke $r74.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r41) 

(declare-const var1057!1 var2005)
(declare-const var845!1 String)
 ; Statement: throw $r74 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var3369-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), cast-from-Int-to-var1790=([java.lang.Integer], java.lang.Number), Int_valueOf/-1371140006=([int], java.lang.Integer), arr-Int-init=([], byte[]), var2005-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3745=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3863=r42, var2553=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3661=r0, var1321=com.alibaba.fastjson2.writer.FieldWriter, var710=r5, var1120=i0, var1166=com.alibaba.fastjson2.internal.asm.MethodWriter, var3633=r1, var522=r2, var3369=com.alibaba.fastjson2.internal.asm.Label, var2249=$r71, var2819=$r72, var461=z6, var990=z9, var2454=z8, var2665=$z0, var766=$r17, var1863=java.nio.charset.Charset, var22=java.nio.charset.StandardCharsets, var623=$r16, var1377=r43, var1291=z7, var594=i69, var1268=$i7, var2025=$i68, var1790=java.lang.Number, var2954=r44, var1136=r45, var3161=r46, var1936=r68, var3438=r67, var2544=r66, var1441=r47, var2005=java.lang.IllegalStateException, var1057=$r74, var3791=$r73, var2876=$r39, var3493=$r40, var845=$r41}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3745, r42=var3863, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2553, r0=var3661, com.alibaba.fastjson2.writer.FieldWriter=var1321, r5=var710, i0=var1120, com.alibaba.fastjson2.internal.asm.MethodWriter=var1166, r1=var3633, r2=var522, com.alibaba.fastjson2.internal.asm.Label=var3369, $r71=var2249, $r72=var2819, z6=var461, z9=var990, z8=var2454, $z0=var2665, $r17=var766, java.nio.charset.Charset=var1863, java.nio.charset.StandardCharsets=var22, $r16=var623, r43=var1377, z7=var1291, i69=var594, $i7=var1268, $i68=var2025, java.lang.Number=var1790, r44=var2954, r45=var1136, r46=var3161, r68=var1936, r67=var3438, r66=var2544, r47=var1441, java.lang.IllegalStateException=var2005, $r74=var1057, $r73=var3791, $r39=var2876, $r40=var3493, $r41=var845}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r42 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r5 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i0 := @parameter2: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r71 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r71.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r72 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r72.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	z6 = 0;	z9 = 0;	z8 = 0;	$z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	if $z0 != 0 goto $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	$r17 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	$r16 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	r43 = virtualinvoke $r17.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r16);	z7 = 1;	i69 = 0;	$i7 = lengthof r43;	if i69 >= $i7 goto $i68 = lengthof r43;	$i68 = lengthof r43;	if $i68 < 2 goto (branch);	if $i68 > 16 goto (branch);	if z7 == 0 goto (branch);	r44 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	r45 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	r46 = "(J)V";	r68 = "(J)V";	r67 = "(J)V";	r66 = "(J)V";	r47 = newarray (byte)[8];	tableswitch($i68) {     case 2: goto r47[0] = 34;     case 3: goto r47[0] = 34;     case 4: goto r47[0] = 34;     case 5: goto r47[0] = 34;     case 6: goto r47[0] = 34;     case 7: goto r47[0] = 34;     case 8: goto r47 = r43;     case 9: goto r47[0] = 34;     case 10: goto r47[0] = 34;     case 11: goto r47[0] = 34;     case 12: goto r47[0] = 34;     case 13: goto r47[0] = 34;     case 14: goto r47[0] = 34;     case 15: goto r47[0] = 34;     case 16: goto staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r43, 0, r47, 0, 8);     default: goto $r74 = new java.lang.IllegalStateException; };	$r74 = new java.lang.IllegalStateException;	$r73 = new java.lang.StringBuilder;	specialinvoke $r73.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("length : ");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i68);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r74.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r41);	throw $r74
;block_num 8