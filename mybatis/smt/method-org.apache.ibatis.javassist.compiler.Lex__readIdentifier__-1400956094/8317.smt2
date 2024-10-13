(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort var3929 0)
(declare-sort var3465 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun textBuffer/-806106376 (var2325) String)
(declare-fun setLength/1276735992 (String Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getc/289734565 (var2325) Int)
(declare-fun var3465_isJavaIdentifierPart/-511874412 (Int) Bool)
(declare-fun ungetc/-206336876 (var2325 Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun lookup/230665857 (var3937 String) Int)
(declare-const null-var2325 var2325)
(declare-const null-Int Int)
(declare-const null-var3929 var3929)
(declare-const var2325-ktable var3937)
(declare-const var1233 var2325) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.Lex 
(assert (not (= var1233 null-var2325)))
(declare-const var524 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var524 null-Int)))
(declare-const var1401 var3929) ; Statement: r4 := @parameter1: org.apache.ibatis.javassist.compiler.Token 
(assert (not (= var1401 null-var3929)))
(define-const var2740 String (textBuffer/-806106376 var1233)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer> 
(assert true)
;(assert (setLength/1276735992 var2740 0)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2740!1 String)
(declare-const var2962 Int)
(assert true) ; Non Conditional
(define-const var2761 Int (cast-from-Int-to-Int var524)) ; Statement: $c0 = (char) i4 
(assert true)
;(assert (append/-1166366385 var2740!1 var2761)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2740!2 String)
(assert (str.prefixof var2740!1 var2740!2))
(assert true)
(define-const var2264 Int (getc/289734565 var1233)) ; Statement: $i2 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>() 
(define-const var524!1 Int var2264) ; Statement: i4 = $i2 
(define-const var2914 Int (cast-from-Int-to-Int var2264)) ; Statement: $c1 = (char) $i2 
(define-const var3046 Bool (var3465_isJavaIdentifierPart/-511874412 var2914)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>($c1) 
 ; Statement: if $z0 != 0 goto $c0 = (char) i4 
(assert (not (not (= (ite var3046 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (ungetc/-206336876 var1233 var2264)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: void ungetc(int)>($i2) 

(declare-const var1233!1 var2325)
(declare-const var2264!1 Int)
(assert true)
(define-const var2387 String (toString/-2075883882 var2740!2)) ; Statement: r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3765 var3937 var2325-ktable) ; Statement: $r3 = <org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.KeywordTable ktable> 
(assert true)
(define-const var3086 Int (lookup/230665857 var3765 var2387)) ; Statement: i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.KeywordTable: int lookup(java.lang.String)>(r2) 
 ; Statement: if i3 < 0 goto r4.<org.apache.ibatis.javassist.compiler.Token: java.lang.String textValue> = r2 
(assert (not (< var3086 0))) ; Negate: Cond: i3 < 0  
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {textBuffer/-806106376=([org.apache.ibatis.javassist.compiler.Lex], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getc/289734565=([org.apache.ibatis.javassist.compiler.Lex], int), var3465_isJavaIdentifierPart/-511874412=([char], boolean), ungetc/-206336876=([org.apache.ibatis.javassist.compiler.Lex, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), lookup/230665857=([org.apache.ibatis.javassist.compiler.KeywordTable, java.lang.String], int)}
; {var2325=org.apache.ibatis.javassist.compiler.Lex, var1233=r0, var524=i4, var3929=org.apache.ibatis.javassist.compiler.Token, var1401=r4, var2740=r1, var2962=0, var2761=$c0, var2264=$i2, var2914=$c1, var3465=java.lang.Character, var3046=$z0, var2387=r2, var3937=org.apache.ibatis.javassist.compiler.KeywordTable, var3765=$r3, var3086=i3}
; {org.apache.ibatis.javassist.compiler.Lex=var2325, r0=var1233, i4=var524, org.apache.ibatis.javassist.compiler.Token=var3929, r4=var1401, r1=var2740, 0=var2962, $c0=var2761, $i2=var2264, $c1=var2914, java.lang.Character=var3465, $z0=var3046, r2=var2387, org.apache.ibatis.javassist.compiler.KeywordTable=var3937, $r3=var3765, i3=var3086}
;seq <java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.Lex;	i4 := @parameter0: int;	r4 := @parameter1: org.apache.ibatis.javassist.compiler.Token;	r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer>;	virtualinvoke r1.<java.lang.StringBuilder: void setLength(int)>(0);	$c0 = (char) i4;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$i2 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>();	i4 = $i2;	$c1 = (char) $i2;	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>($c1);	if $z0 != 0 goto $c0 = (char) i4;	specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: void ungetc(int)>($i2);	r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = <org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.KeywordTable ktable>;	i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.KeywordTable: int lookup(java.lang.String)>(r2);	if i3 < 0 goto r4.<org.apache.ibatis.javassist.compiler.Token: java.lang.String textValue> = r2;	return i3
;block_num 4