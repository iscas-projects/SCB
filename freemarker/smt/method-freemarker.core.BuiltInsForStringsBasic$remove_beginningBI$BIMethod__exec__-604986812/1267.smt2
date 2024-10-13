(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3034 0)
(declare-sort var1288 0)
(declare-sort var3204 0)
(declare-sort var1333 0)
(declare-sort var3058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1842912605 (var3034) var3204)
(declare-fun checkMethodArgCount/-2126484030 (var1333 var1288 Int) void)
(declare-fun cast-from-var3204-to-var1333 (var3204) var1333)
(declare-fun getStringMethodArg/-1432244773 (var1333 var1288 Int) String)
(declare-fun var3058-init () var3058)
(declare-fun s/1842912605 (var3034) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/378607920 (var3058 String) void)
(declare-const null-var3034 var3034)
(declare-const null-var1288 var1288)
(declare-const var2573 var3034) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod 
(assert (not (= var2573 null-var3034)))
(declare-const var1089 var1288) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1089 null-var1288)))
(define-const var3238 var3204 (this$0/1842912605 var2573)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-2126484030 (cast-from-var3204-to-var1333 var3238) var1089 1)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: void checkMethodArgCount(java.util.List,int)>(r1, 1) 

(declare-const var3238!1 var3204)
(declare-const var1089!1 var1288)
(declare-const var2088 Int)
(define-const var1202 var3204 (this$0/1842912605 var2573)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0> 
(assert true)
(define-const var214 String (getStringMethodArg/-1432244773 (cast-from-var3204-to-var1333 var1202) var1089!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var1579 var3058 var3058-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var2729 String (s/1842912605 var2573)) ; Statement: $r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var740 Bool (startsWith/-1785782452 var2729 var214)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s> 
(assert (not (= (ite var740 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1669 String (s/1842912605 var2573)) ; Statement: $r7 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s> 
(assert true)
(define-const var238 Int (length/-134980193 var214)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (and true (and (>= var238 0) (>= (str.len var1669) var238))))
(define-const var2541 String (substring/850833817 var1669 var238)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int)>($i0) 
 ; Statement: goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/378607920 var1579 var2541)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r8) 

(declare-const var1579!1 var3058)
(declare-const var2541!1 String)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1842912605=([freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod], freemarker.core.BuiltInsForStringsBasic$remove_beginningBI), checkMethodArgCount/-2126484030=([freemarker.core.BuiltIn, java.util.List, int], void), cast-from-var3204-to-var1333=([freemarker.core.BuiltInsForStringsBasic$remove_beginningBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), var3058-init=([], freemarker.template.SimpleScalar), s/1842912605=([freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3034=freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod, var2573=r0, var1288=java.util.List, var1089=r1, var3204=freemarker.core.BuiltInsForStringsBasic$remove_beginningBI, var3238=$r2, var1333=freemarker.core.BuiltIn, var2088=1, var1202=$r3, var214=r4, var3058=freemarker.template.SimpleScalar, var1579=$r5, var2729=$r6, var740=$z0, var1669=$r7, var238=$i0, var2541=$r8}
; {freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod=var3034, r0=var2573, java.util.List=var1288, r1=var1089, freemarker.core.BuiltInsForStringsBasic$remove_beginningBI=var3204, $r2=var3238, freemarker.core.BuiltIn=var1333, 1=var2088, $r3=var1202, r4=var214, freemarker.template.SimpleScalar=var3058, $r5=var1579, $r6=var2729, $z0=var740, $r7=var1669, $i0=var238, $r8=var2541}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: void checkMethodArgCount(java.util.List,int)>(r1, 1);	$r3 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: freemarker.core.BuiltInsForStringsBasic$remove_beginningBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z0 == 0 goto $r8 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s>;	$r7 = r0.<freemarker.core.BuiltInsForStringsBasic$remove_beginningBI$BIMethod: java.lang.String s>;	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int)>($i0);	goto [?= specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r8)];	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r8);	return $r5
;block_num 3