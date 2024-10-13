(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var132 0)
(declare-sort var361 0)
(declare-sort var2083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2083) void)
(declare-fun cast-from-var132-to-var2083 (var132) var2083)
(declare-fun literal/-720467429 (var132) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun value/-720467429 (var132) String)
(declare-const null-var132 var132)
(declare-const null-String String)
(declare-const var2540 var132) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.StrParam 
(assert (not (= var2540 null-var132)))
(declare-const var2740 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2740 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var132-to-var2083 var2540))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2540!1 var132)
(declare-const var2540!2 var132)
(assert (not (= var2540!2 null-var132)))
(assert (= (literal/-720467429 var2540!2) var2740)) ; Statement: r0.<com.github.jknack.handlebars.internal.StrParam: java.lang.String literal> = r1 
(assert true)
(define-const var343 Int (length/-134980193 var2740)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var955 Int (- var343 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var2740) var955) (>= var955 1))))
(define-const var1031 String (substring/-1240304868 var2740 1 var955)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, $i1) 
(declare-const var2540!3 var132)
(assert (not (= var2540!3 null-var132)))
(assert (= (value/-720467429 var2540!3) var1031)) ; Statement: r0.<com.github.jknack.handlebars.internal.StrParam: java.lang.String value> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var132-to-var2083=([com.github.jknack.handlebars.internal.StrParam], java.lang.Object), literal/-720467429=([com.github.jknack.handlebars.internal.StrParam], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), value/-720467429=([com.github.jknack.handlebars.internal.StrParam], java.lang.String)}
; {var132=com.github.jknack.handlebars.internal.StrParam, var2540=r0, var2740=r1, var361=null_type, var2083=java.lang.Object, var343=$i0, var955=$i1, var1031=$r2}
; {com.github.jknack.handlebars.internal.StrParam=var132, r0=var2540, r1=var2740, null_type=var361, java.lang.Object=var2083, $i0=var343, $i1=var955, $r2=var1031}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.StrParam;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.github.jknack.handlebars.internal.StrParam: java.lang.String literal> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	r0.<com.github.jknack.handlebars.internal.StrParam: java.lang.String value> = $r2;	return
;block_num 1