(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3378 0)
(declare-sort var3877 0)
(declare-sort var328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var328) void)
(declare-fun cast-from-var3378-to-var328 (var3378) var328)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun glob/809256223 (var3378) String)
(declare-fun buildPattern/-773282416 (var3378) void)
(declare-const null-var3378 var3378)
(declare-const null-String String)
(declare-const var3744 var3378) ; Statement: r0 := @this: freemarker.cache.FileNameGlobMatcher 
(assert (not (= var3744 null-var3378)))
(declare-const var512 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var512 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var3378-to-var328 var3744))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var3744!1 var3378)
(assert true)
(define-const var1852 Int (indexOf/-1037706067 var512 47)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47) 
(define-const var1974 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> = r1 
(assert (= var1852 var1974)) ; Cond: $i0 == $i2 
(declare-const var3744!2 var3378)
(assert (not (= var3744!2 null-var3378)))
(assert (= (glob/809256223 var3744!2) var512)) ; Statement: r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> = r1 
(assert true)
;(assert (buildPattern/-773282416 var3744!2)) ; Statement: specialinvoke r0.<freemarker.cache.FileNameGlobMatcher: void buildPattern()>() 

(declare-const var3744!3 var3378)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var3378-to-var328=([freemarker.cache.FileNameGlobMatcher], freemarker.cache.TemplateSourceMatcher), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), glob/809256223=([freemarker.cache.FileNameGlobMatcher], java.lang.String), buildPattern/-773282416=([freemarker.cache.FileNameGlobMatcher], void)}
; {var3378=freemarker.cache.FileNameGlobMatcher, var3744=r0, var512=r1, var3877=null_type, var328=freemarker.cache.TemplateSourceMatcher, var1852=$i0, var1974=$i2}
; {freemarker.cache.FileNameGlobMatcher=var3378, r0=var3744, r1=var512, null_type=var3877, freemarker.cache.TemplateSourceMatcher=var328, $i0=var1852, $i2=var1974}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: freemarker.cache.FileNameGlobMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47);	$i2 = (int) -1;	if $i0 == $i2 goto r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> = r1;	r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> = r1;	specialinvoke r0.<freemarker.cache.FileNameGlobMatcher: void buildPattern()>();	return
;block_num 2