(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2660 0)
(declare-sort var1978 0)
(declare-sort var1400 0)
(declare-sort var3987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun textBuffer/-806106376 (var2660) String)
(declare-fun setLength/1276735992 (String Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getc/289734565 (var2660) Int)
(declare-fun var1400_isJavaIdentifierPart/-511874412 (Int) Bool)
(declare-fun ungetc/-206336876 (var2660 Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun lookup/230665857 (var3987 String) Int)
(declare-fun textValue/-1566437230 (var1978) String)
(declare-const null-var2660 var2660)
(declare-const null-Int Int)
(declare-const null-var1978 var1978)
(declare-const var2660-ktable var3987)
(declare-const var42 var2660) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.Lex 
(assert (not (= var42 null-var2660)))
(declare-const var1037 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var1037 null-Int)))
(declare-const var1089 var1978) ; Statement: r4 := @parameter1: org.apache.ibatis.javassist.compiler.Token 
(assert (not (= var1089 null-var1978)))
(define-const var3934 String (textBuffer/-806106376 var42)) ; Statement: r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer> 
(assert true)
;(assert (setLength/1276735992 var3934 0)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3934!1 String)
(declare-const var3406 Int)
(assert true) ; Non Conditional
(define-const var3628 Int (cast-from-Int-to-Int var1037)) ; Statement: $c0 = (char) i4 
(assert true)
;(assert (append/-1166366385 var3934!1 var3628)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3934!2 String)
(assert (str.prefixof var3934!1 var3934!2))
(assert true)
(define-const var2981 Int (getc/289734565 var42)) ; Statement: $i2 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>() 
(define-const var1037!1 Int var2981) ; Statement: i4 = $i2 
(define-const var3460 Int (cast-from-Int-to-Int var2981)) ; Statement: $c1 = (char) $i2 
(define-const var2178 Bool (var1400_isJavaIdentifierPart/-511874412 var3460)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>($c1) 
 ; Statement: if $z0 != 0 goto $c0 = (char) i4 
(assert (not (not (= (ite var2178 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (ungetc/-206336876 var42 var2981)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: void ungetc(int)>($i2) 

(declare-const var42!1 var2660)
(declare-const var2981!1 Int)
(assert true)
(define-const var3050 String (toString/-2075883882 var3934!2)) ; Statement: r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1402 var3987 var2660-ktable) ; Statement: $r3 = <org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.KeywordTable ktable> 
(assert true)
(define-const var1983 Int (lookup/230665857 var1402 var3050)) ; Statement: i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.KeywordTable: int lookup(java.lang.String)>(r2) 
 ; Statement: if i3 < 0 goto r4.<org.apache.ibatis.javassist.compiler.Token: java.lang.String textValue> = r2 
(assert (< var1983 0)) ; Cond: i3 < 0 
(declare-const var1089!1 var1978)
(assert (not (= var1089!1 null-var1978)))
(assert (= (textValue/-1566437230 var1089!1) var3050)) ; Statement: r4.<org.apache.ibatis.javassist.compiler.Token: java.lang.String textValue> = r2 
 ; Statement: return 400 
(check-sat)
(get-model)
(get-unsat-core)
; {textBuffer/-806106376=([org.apache.ibatis.javassist.compiler.Lex], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getc/289734565=([org.apache.ibatis.javassist.compiler.Lex], int), var1400_isJavaIdentifierPart/-511874412=([char], boolean), ungetc/-206336876=([org.apache.ibatis.javassist.compiler.Lex, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), lookup/230665857=([org.apache.ibatis.javassist.compiler.KeywordTable, java.lang.String], int), textValue/-1566437230=([org.apache.ibatis.javassist.compiler.Token], java.lang.String)}
; {var2660=org.apache.ibatis.javassist.compiler.Lex, var42=r0, var1037=i4, var1978=org.apache.ibatis.javassist.compiler.Token, var1089=r4, var3934=r1, var3406=0, var3628=$c0, var2981=$i2, var3460=$c1, var1400=java.lang.Character, var2178=$z0, var3050=r2, var3987=org.apache.ibatis.javassist.compiler.KeywordTable, var1402=$r3, var1983=i3}
; {org.apache.ibatis.javassist.compiler.Lex=var2660, r0=var42, i4=var1037, org.apache.ibatis.javassist.compiler.Token=var1978, r4=var1089, r1=var3934, 0=var3406, $c0=var3628, $i2=var2981, $c1=var3460, java.lang.Character=var1400, $z0=var2178, r2=var3050, org.apache.ibatis.javassist.compiler.KeywordTable=var3987, $r3=var1402, i3=var1983}
;seq <java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.Lex;	i4 := @parameter0: int;	r4 := @parameter1: org.apache.ibatis.javassist.compiler.Token;	r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer>;	virtualinvoke r1.<java.lang.StringBuilder: void setLength(int)>(0);	$c0 = (char) i4;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$i2 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: int getc()>();	i4 = $i2;	$c1 = (char) $i2;	$z0 = staticinvoke <java.lang.Character: boolean isJavaIdentifierPart(char)>($c1);	if $z0 != 0 goto $c0 = (char) i4;	specialinvoke r0.<org.apache.ibatis.javassist.compiler.Lex: void ungetc(int)>($i2);	r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = <org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.KeywordTable ktable>;	i3 = virtualinvoke $r3.<org.apache.ibatis.javassist.compiler.KeywordTable: int lookup(java.lang.String)>(r2);	if i3 < 0 goto r4.<org.apache.ibatis.javassist.compiler.Token: java.lang.String textValue> = r2;	r4.<org.apache.ibatis.javassist.compiler.Token: java.lang.String textValue> = r2;	return 400
;block_num 4