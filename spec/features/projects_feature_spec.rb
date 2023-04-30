require "rails_helper"

RSpec.feature "Projects", type: :feature do
    context "New project" do
      let(:project) { Project.create(title: "Test title", description: "Test content") }
      before(:each) do
        visit edit_project_path(project)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Project"
        expect(page).to have_content("Project was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Title", with: ""
        end
        within("form") do
            fill_in "Description", with: ""
        end
        click_button "Update Project"
        expect(page).to have_content("Title can't be blank")
        expect(page).to have_content("Description can't be blank")
      end
    end

    context "New project" do
        let(:project) { Project.create(title: "Test title", description: "Test content") }
        before(:each) do
          visit edit_project_path(project)
        end
   
   
        scenario "should be successful" do
          within("form") do
            fill_in "Description", with: "New description content"
          end
          click_button "Update Project"
          expect(page).to have_content("Project was successfully Created")
        end
   
   
        scenario "should fail" do
          within("form") do
            fill_in "Title", with: ""
          end
          within("form") do
              fill_in "Description", with: ""
          end
          click_button "Update Project"
          expect(page).to have_content("Title can't be blank")
          expect(page).to have_content("Description can't be blank")
        end
      end
end
 
