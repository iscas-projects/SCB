(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort var1636 0)
(declare-sort var1839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1839) void)
(declare-fun cast-from-var3513-to-var1839 (var3513) var1839)
(declare-fun name/792036601 (var3513) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun nameWithoutAtSymbol/792036601 (var3513) String)
(declare-const null-var3513 var3513)
(declare-const null-String String)
(declare-const var3480 var3513) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.path.DataPath 
(assert (not (= var3480 null-var3513)))
(declare-const var1283 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1283 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3513-to-var1839 var3480))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3480!1 var3513)
(declare-const var3480!2 var3513)
(assert (not (= var3480!2 null-var3513)))
(assert (= (name/792036601 var3480!2) var1283)) ; Statement: r0.<com.github.jknack.handlebars.internal.path.DataPath: java.lang.String name> = r1 
(assert (and true (and (>= 1 0) (>= (str.len var1283) 1))))
(define-const var303 String (substring/850833817 var1283 1)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1) 
(declare-const var3480!3 var3513)
(assert (not (= var3480!3 null-var3513)))
(assert (= (nameWithoutAtSymbol/792036601 var3480!3) var303)) ; Statement: r0.<com.github.jknack.handlebars.internal.path.DataPath: java.lang.String nameWithoutAtSymbol> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3513-to-var1839=([com.github.jknack.handlebars.internal.path.DataPath], java.lang.Object), name/792036601=([com.github.jknack.handlebars.internal.path.DataPath], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), nameWithoutAtSymbol/792036601=([com.github.jknack.handlebars.internal.path.DataPath], java.lang.String)}
; {var3513=com.github.jknack.handlebars.internal.path.DataPath, var3480=r0, var1283=r1, var1636=null_type, var1839=java.lang.Object, var303=$r2}
; {com.github.jknack.handlebars.internal.path.DataPath=var3513, r0=var3480, r1=var1283, null_type=var1636, java.lang.Object=var1839, $r2=var303}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.path.DataPath;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.github.jknack.handlebars.internal.path.DataPath: java.lang.String name> = r1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1);	r0.<com.github.jknack.handlebars.internal.path.DataPath: java.lang.String nameWithoutAtSymbol> = $r2;	return
;block_num 1