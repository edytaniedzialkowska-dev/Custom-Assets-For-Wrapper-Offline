package anifire.util
{
    import flash.display.*;

    public class UtilFlash extends Object
    {

        public function UtilFlash()
        {
            return;
        }// end function

        public static function getInstance(param1:MovieClip, param2:String) : MovieClip
        {
            var _loc_3:MovieClip = null;
            var _loc_4:MovieClip = null;
            var _loc_5:int = 0;
            if (param1.name == param2)
            {
                return param1;
            }
            _loc_5 = 0;
            while (_loc_5 < param1.numChildren)
            {
                
                if (param1.getChildAt(_loc_5) is MovieClip)
                {
                    _loc_4 = MovieClip(param1.getChildAt(_loc_5));
                    _loc_3 = UtilFlash.getInstance(_loc_4, param2);
                    if (_loc_3 != null)
                    {
                        return _loc_3;
                    }
                }
                _loc_5++;
            }
            return null;
        }// end function

    }
}
