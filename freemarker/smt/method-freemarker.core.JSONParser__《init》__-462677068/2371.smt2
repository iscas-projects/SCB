(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2867 0)
(declare-sort var3524 0)
(declare-sort var1640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1640) void)
(declare-fun cast-from-var2867-to-var1640 (var2867) var1640)
(declare-fun src/-1870102386 (var2867) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ln/-1870102386 (var2867) Int)
(declare-const null-var2867 var2867)
(declare-const null-String String)
(declare-const var2773 var2867) ; Statement: r0 := @this: freemarker.core.JSONParser 
(assert (not (= var2773 null-var2867)))
(declare-const var775 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var775 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2867-to-var1640 var2773))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2773!1 var2867)
(declare-const var2773!2 var2867)
(assert (not (= var2773!2 null-var2867)))
(assert (= (src/-1870102386 var2773!2) var775)) ; Statement: r0.<freemarker.core.JSONParser: java.lang.String src> = r1 
(assert true)
(define-const var3802 Int (length/-134980193 var775)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var2773!3 var2867)
(assert (not (= var2773!3 null-var2867)))
(assert (= (ln/-1870102386 var2773!3) var3802)) ; Statement: r0.<freemarker.core.JSONParser: int ln> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2867-to-var1640=([freemarker.core.JSONParser], java.lang.Object), src/-1870102386=([freemarker.core.JSONParser], java.lang.String), length/-134980193=([java.lang.String], int), ln/-1870102386=([freemarker.core.JSONParser], int)}
; {var2867=freemarker.core.JSONParser, var2773=r0, var775=r1, var3524=null_type, var1640=java.lang.Object, var3802=$i0}
; {freemarker.core.JSONParser=var2867, r0=var2773, r1=var775, null_type=var3524, java.lang.Object=var1640, $i0=var3802}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.JSONParser;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<freemarker.core.JSONParser: java.lang.String src> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<freemarker.core.JSONParser: int ln> = $i0;	return
;block_num 1