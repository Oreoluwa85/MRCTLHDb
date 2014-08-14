update 
	blastp100213lineagesnew
set field4 = case when field14 like '%Amoebozoa%' then ('Amoebozoa') ELSE
case when field14 like '%Metazoa%' then ('Metazoa') ELSE
case when field14 like '%Fungi%' then ('Fungi') ELSE
case when field14 like '%Viridiplantae%' then ('Viridiplantae') ELSE
case when field14 like '%Stramenopiles%' then ('SAR') ELSE
case when field14 like '%Rhizaria%' then ('SAR') ELSE
case when field14 like '%Alveolata%' then ('SAR') ELSE
case when field14 like '%Bacteria%' then ('Bacteria') END
END
END
END
END
END
END
END