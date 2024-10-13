(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var444 0)
(declare-sort var1115 0)
(declare-sort var2900 0)
(declare-sort var3913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun remapper/856331938 (var444) var2900)
(declare-fun className/856331938 (var444) String)
(declare-fun mapType/1615207449 (var2900 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun v/856331938 (var444) var3913)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun visitInnerClassType/-292915065 (var3913 String) void)
(declare-const null-var444 var444)
(declare-const null-String String)
(declare-const var3479 var444) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter 
(assert (not (= var3479 null-var444)))
(declare-const var3369 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var3369 null-String)))
(define-const var1069 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1069)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1069!1 String)
(assert (= var1069!1 ""))
(define-const var3784 var2900 (remapper/856331938 var3479)) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper> 
(define-const var3122 String (className/856331938 var3479)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> 
(assert true)
(define-const var2248 String (mapType/1615207449 var3784 var3122)) ; Statement: $r4 = virtualinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r2) 
(assert true)
(define-const var3176 String (append/672562846 var1069!1 var2248)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1069!2 String)
(assert (= var1069!2 (str.++ var1069!1 var2248)))
(assert true)
(define-const var925 String (append/-1166366385 var3176 36)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var3176!1 String)
(assert (str.prefixof var3176 var3176!1))
(assert true)
(define-const var3898 String (toString/-2075883882 var925)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var244 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var244)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var244!1 String)
(assert (= var244!1 ""))
(define-const var1897 String (className/856331938 var3479)) ; Statement: $r9 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> 
(assert true)
(define-const var2990 String (append/672562846 var244!1 var1897)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var244!2 String)
(assert (= var244!2 (str.++ var244!1 var1897)))
(assert true)
(define-const var425 String (append/-1166366385 var2990 36)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var2990!1 String)
(assert (str.prefixof var2990 var2990!1))
(assert true)
(define-const var721 String (append/672562846 var425 var3369)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var425!1 String)
(assert (= var425!1 (str.++ var425 var3369)))
(assert true)
(define-const var2257 String (toString/-2075883882 var721)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3479!1 var444)
(assert (not (= var3479!1 null-var444)))
(assert (= (className/856331938 var3479!1) var2257)) ; Statement: r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> = $r14 
(define-const var3461 var2900 (remapper/856331938 var3479!1)) ; Statement: $r16 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper> 
(define-const var999 String (className/856331938 var3479!1)) ; Statement: $r15 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> 
(assert true)
(define-const var1854 String (mapType/1615207449 var3461 var999)) ; Statement: r17 = virtualinvoke $r16.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r15) 
(assert true)
(define-const var3789 Bool (startsWith/-1785782452 var1854 var3898)) ; Statement: $z0 = virtualinvoke r17.<java.lang.String: boolean startsWith(java.lang.String)>(r7) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(36) 
(assert (not (= (ite var3789 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2702 Int (length/-134980193 var3898)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
 ; Statement: goto [?= $r18 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.signature.SignatureVisitor v>] 
(assert true) ; Non Conditional
(define-const var311 var3913 (v/856331938 var3479!1)) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.signature.SignatureVisitor v> 
(assert (and true (and (>= var2702 0) (>= (str.len var1854) var2702))))
(define-const var1023 String (substring/850833817 var1854 var2702)) ; Statement: $r19 = virtualinvoke r17.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
;(assert (visitInnerClassType/-292915065 var311 var1023)) ; Statement: virtualinvoke $r18.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitInnerClassType(java.lang.String)>($r19) 

(declare-const var311!1 var3913)
(declare-const var1023!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), remapper/856331938=([jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter], jdk.internal.org.objectweb.asm.commons.Remapper), className/856331938=([jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter], java.lang.String), mapType/1615207449=([jdk.internal.org.objectweb.asm.commons.Remapper, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), v/856331938=([jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), substring/850833817=([java.lang.String, int], java.lang.String), visitInnerClassType/-292915065=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, java.lang.String], void)}
; {var444=jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter, var3479=r1, var3369=r11, var1115=null_type, var1069=$r0, var2900=jdk.internal.org.objectweb.asm.commons.Remapper, var3784=$r3, var3122=$r2, var2248=$r4, var3176=$r5, var925=$r6, var3898=r7, var244=$r8, var1897=$r9, var2990=$r10, var425=$r12, var721=$r13, var2257=$r14, var3461=$r16, var999=$r15, var1854=r17, var3789=$z0, var2702=$i1, var3913=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var311=$r18, var1023=$r19}
; {jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter=var444, r1=var3479, r11=var3369, null_type=var1115, $r0=var1069, jdk.internal.org.objectweb.asm.commons.Remapper=var2900, $r3=var3784, $r2=var3122, $r4=var2248, $r5=var3176, $r6=var925, r7=var3898, $r8=var244, $r9=var1897, $r10=var2990, $r12=var425, $r13=var721, $r14=var2257, $r16=var3461, $r15=var999, r17=var1854, $z0=var3789, $i1=var2702, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var3913, $r18=var311, $r19=var1023}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter;	r11 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper>;	$r2 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className>;	$r4 = virtualinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className>;	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> = $r14;	$r16 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper>;	$r15 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className>;	r17 = virtualinvoke $r16.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r15);	$z0 = virtualinvoke r17.<java.lang.String: boolean startsWith(java.lang.String)>(r7);	if $z0 == 0 goto $i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(36);	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	goto [?= $r18 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.signature.SignatureVisitor v>];	$r18 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.signature.SignatureVisitor v>;	$r19 = virtualinvoke r17.<java.lang.String: java.lang.String substring(int)>($i1);	virtualinvoke $r18.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitInnerClassType(java.lang.String)>($r19);	return
;block_num 3