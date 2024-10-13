(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3789 0)
(declare-sort var1293 0)
(declare-sort var1713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1713) void)
(declare-fun cast-from-var3789-to-var1713 (var3789) var1713)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun className/821882662 (var3789) String)
(declare-fun classBytes/821882662 (var3789) (Array Int Int))
(declare-const null-var3789 var3789)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var717 var3789) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader 
(assert (not (= var717 null-var3789)))
(declare-const var2421 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2421 null-String)))
(declare-const var1131 (Array Int Int)) ; Statement: r3 := @parameter1: byte[] 
(assert (not (= var1131 null-__Array__Int__Int__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3789-to-var1713 var717))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var717!1 var3789)
(assert true)
(define-const var811 String (replace/1524665721 var2421 47 46)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(declare-const var717!2 var3789)
(assert (not (= var717!2 null-var3789)))
(assert (= (className/821882662 var717!2) var811)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader: java.lang.String className> = $r2 
(declare-const var717!3 var3789)
(assert (not (= var717!3 null-var3789)))
(assert (= (classBytes/821882662 var717!3) var1131)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader: byte[] classBytes> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3789-to-var1713=([jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader], java.lang.Object), replace/1524665721=([java.lang.String, char, char], java.lang.String), className/821882662=([jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader], java.lang.String), classBytes/821882662=([jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader], byte[])}
; {var3789=jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader, var717=r0, var2421=r1, var1293=null_type, var1131=r3, var1713=java.lang.Object, var811=$r2}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader=var3789, r0=var717, r1=var2421, null_type=var1293, r3=var1131, java.lang.Object=var1713, $r2=var811}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: byte[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader: java.lang.String className> = $r2;	r0.<jdk.nashorn.internal.runtime.linker.JavaAdapterClassLoader: byte[] classBytes> = r3;	return
;block_num 1