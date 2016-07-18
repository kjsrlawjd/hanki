class HomeController < ApplicationController

  def main

  end



      def help_write

      end

      def help

        new_helplist = Helplist.new
        new_helplist.content=params[:content]
        new_helplist.title=params[:title]
        new_helplist.save

        redirect_to "/help_list"
      end


      def help_list

          @every_help= Helplist.all.order ("id desc")

      end

      def helpre

          helprep = Helpre.new
          helprep.content = params[:content]
          helprep.helplist_id = params[:helpre]
          helprep.save

          @helpback= Helplist.find(params[:helpre])

          redirect_to action: 'help_read', id:@helpback.id

      end

      def help_read

          @one_help = Helplist.find(params[:id])

      end



      def gachi_write

      end

      def gachi

        new_gachilist = Gachilist.new
        new_gachilist.content=params[:content]
        new_gachilist.title=params[:title]
        new_gachilist.save

        redirect_to "/gachi_list"
      end


      def gachi_list

          @every_gachi= Gachilist.all.order ("id desc")

      end

      def gachire

          gachirep = Gachire.new
          gachirep.content = params[:content]
          gachirep.gachilist_id = params[:gachire]
          gachirep.save

          @gachiback= Gachilist.find(params[:gachire])

          redirect_to action: 'gachi_read', id:@gachiback.id

      end


      def gachi_read

          @one_gachi = Gachilist.find(params[:id])

      end




end
